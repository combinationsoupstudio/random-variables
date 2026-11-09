class_name Player
extends CharacterBody3D
## Third-person movement: camera-relative WASD, sprint, jump and mouse orbit.
## The body never rotates; only the camera pivot and the visual do, so the
## camera yaw is the single source of truth for "forward".
## The scene puts the body on collision layer 2 so the SpringArm3D (mask 1)
## does not collide with the player's own capsule.

@export var walk_speed: float = 4.0
@export var sprint_speed: float = 7.0
@export var jump_velocity: float = 5.0
@export var acceleration: float = 30.0
@export var turn_speed: float = 12.0
@export var mouse_sensitivity: float = 0.0025
@export_range(-89.0, 0.0) var min_pitch_degrees: float = -70.0
@export_range(0.0, 89.0) var max_pitch_degrees: float = 40.0

@onready var _camera_pivot: Node3D = $CameraPivot
@onready var _visual: Node3D = $Visual


func _ready() -> void:
	Input.mouse_mode = Input.MOUSE_MODE_CAPTURED


func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_cancel"):
		Input.mouse_mode = Input.MOUSE_MODE_VISIBLE
	elif event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		Input.mouse_mode = Input.MOUSE_MODE_CAPTURED
	elif event is InputEventMouseMotion and Input.mouse_mode == Input.MOUSE_MODE_CAPTURED:
		# screen_relative ignores the canvas_items stretch, so sensitivity does not vary by window size.
		_orbit_camera(event.screen_relative)


func _physics_process(delta: float) -> void:
	if is_on_floor():
		if Input.is_action_just_pressed("jump"):
			velocity.y = jump_velocity
	else:
		velocity += get_gravity() * delta

	var direction: Vector3 = _get_move_direction()
	var speed: float = sprint_speed if Input.is_action_pressed("sprint") else walk_speed
	var target: Vector3 = direction * speed
	var max_change: float = acceleration * delta
	velocity.x = move_toward(velocity.x, target.x, max_change)
	velocity.z = move_toward(velocity.z, target.z, max_change)
	move_and_slide()

	if direction != Vector3.ZERO:
		_face(direction, delta)


func _get_move_direction() -> Vector3:
	var input: Vector2 = Input.get_vector("move_left", "move_right", "move_forward", "move_back")
	return Vector3(input.x, 0.0, input.y).rotated(Vector3.UP, _camera_pivot.rotation.y)


func _orbit_camera(mouse_delta: Vector2) -> void:
	_camera_pivot.rotation.y -= mouse_delta.x * mouse_sensitivity
	_camera_pivot.rotation.x = clampf(
		_camera_pivot.rotation.x - mouse_delta.y * mouse_sensitivity,
		deg_to_rad(min_pitch_degrees),
		deg_to_rad(max_pitch_degrees)
	)


func _face(direction: Vector3, delta: float) -> void:
	var target_yaw: float = atan2(-direction.x, -direction.z)
	var weight: float = 1.0 - exp(-turn_speed * delta)
	_visual.rotation.y = lerp_angle(_visual.rotation.y, target_yaw, weight)

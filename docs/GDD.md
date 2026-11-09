# Random Variables - Game Design Document
*Status: pre-production. This file is the source of truth. Notes captured verbatim from Chris, 3 Nov 2026; structured 9 Nov 2026. Nothing below is locked until it has an ADR.*

## One line
A small, beautiful, low-poly multiplayer sim where jobs, income and housing are scarce and shift unpredictably. Players react to "random variables"; everything they do has a reaction.

## Why it exists (the message)
Governments expect people to live and work crammed on top of each other. The game shows, through mechanics rather than speeches, how that plays out for different people for different reasons: some thrive in the crush, most fight, cheat, ally or leave. Subliminal, never preachy.

## Working title
**Random Variables** - deliberately open-ended (not "15-Minute City") so the concept is never boxed in.

## World
- Small open world, hard natural barrier (river one side, park + treeline the other). Not massive.
- Multi-storey apartment block = home base. Servo (service station) across the road = second job site. More job sites later.
- Low-poly, intentionally beautiful. Art direction matters at low fidelity. Reference feel: VRChat openness + Dispatch-style mechanic systems.

## Avatar
- Player builds a physical avatar once. Locked to account (Steam ID / CD key). Never changeable after.
- It persists and grows with play.

## Core loop: jobs and income
- Jobs are **limited-slot stations**, not guaranteed roles.
- Office: 10 players arrive, 5 computers + 1 boss desk + 1 print/mail job = 7 paid roles. 3 get nothing.
- Servo: 3 roles (shelves, fridges, pump). A 4th opens only when a random variable fires (two cars arrive at once). A car can drive off mid-fill and unemploy you on the spot.
- The unemployed choose: force/bully someone off a station (chaos), or leave and try elsewhere.
- Income buys and places objects in your unit (studio -> apartment -> penthouse tiers).
- Leaderboard ranks status two ways: biggest spend (big unit, lots of stuff) OR biggest bank (small unit, fat balance). Playstyle choice, not one winning path.

## Survival layer
- Meters: bladder, food, water (minimum). Meeting a need costs task time (toilet, vending machine).
- Purchased items are **physical world objects** (a water bottle on your desk). Other players can knock it over, tip it out, drink it. This is a core chaos source, not a side system.

## Social dynamics
- No factions. Alliances emerge: incumbents band together to keep newcomers out; or everyone, newcomers included, teams up to eject the one annoying player ("Joe").
- Conflict lines are fluid and situational.

## Weather
- Tomorrow's forecast is viewable; outfit chosen in advance; forecast can be wrong.
- Wrong clothes -> discomfort -> hotter in the office -> drink more -> more desk time lost. Weather feeds the meters, not just the skybox.

## Random variable events (disaster layer)
- Flood: bottom 1-2 floors uninhabitable. Displaced players are redistributed into strangers' units for 24-48 h real time.
- Cohabitation -> poor sleep -> frustration -> reduced work performance -> mistakes (pull the pump nozzle too early) -> fired -> locked out of that job 7 days -> compete for another job track.

## Design philosophy
Chaos theory. Every player action has a ripple. Systems interlock (jobs, meters, items, weather, housing, social). Outcome varies by server: orderly, fun, or absolutely chaotic. That unpredictability is the feature.

## Monetisation
- $20-30 one-time. No pay-to-win.
- Optional cosmetic/furniture DLC packs; items **tradeable between players** so nobody needs every pack.

## Open threads (need an ADR or a playtest before they are decided)
- Event triggering: scripted / procedural / player-driven?
- Griefing guardrails vs. intended chaos (item interference, station bullying).
- Full job list beyond office + servo.
- Sleep -> mistake-rate maths. Bladder failure consequence.
- Forecast accuracy tuning.
- Persistence model: persistent server vs. session; player count per world.
- Netcode: Godot high-level multiplayer + ENet first; Steam P2P (GodotSteam) later. (ADR-0002, pending)

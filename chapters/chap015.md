---
category: chapter
part: 2
name: The Deepfolk, part 2
world: Latter Earth
campaign: Arrival
game_date: 3877.6F1
season: winter
location: Holzander
pcs: [Dolman, Guilf, Amyria, B3k]
members: 3+
party_rank: 1.9
xp: 3300
tags: 
---

# Chapter 15 The Deepfolk, part 2

## Planning checklist

- [x] Debrief: summarise previous chapter and distribute xp
- [x] Commit next chapter draft
- [x] Clean up previous chapter files, final commit
- [x] Update inkarnate maps (if applicable)
- [x] Evaluate new game date
- [x] Define a consequence in the world of the actions of the PCs on the previous session (consider snoozing hooks)
- [x] Review [Abridged](_published/arrival/abridged.md)
- [x] Review and organise [_arrivalNotions](arrival/_arrivalNotions.md)
- [x] Review and organise Sly Flourish secrets for Holzander (if applicable)
- [x] Think about characters, write motivations & hooks
- [x] Define party rank and XP ([_arrivalTracker](../_arrivalTracker.md))
- [x] Review [Fronts](../factions/_fronts.md) and check if new front has materialised if the group has reached a new integer level average.
- [x] Review [Factions](../factions/_factionGame.md) and run one [faction turn](../../../rules/factionRules.md), if last turn was 3+ game weeks ago, including decide what remaining relevant NPCs are doing, and their respective checks (Background Actors, wwn334)
- [x] Detail strong start
- [x] Outline potential scenes, drafting locations, NPCs and encounters as needed. Define alternatives to combat for all scenes.
- [x] Review and order/highlight information pool.
- [x] Outline and update location notes, reviewing scenes and secrets
- [x] Outline potential NPCs, reviewing all above
- [x] Define treasure
- [x] Update random encounter tables
- [x] Prepare Owlbear, if applicable

## Character motivations

- **Dolman**: Find Galiera, free Fuko from Ghuse
- **Guilf**: Find out more about The Void, and why it is so dark, and why his mother sold his soul.
- **Amyria**: Protect little Guilf, find the Angel Hound and free her, feels the Holzander castle is her "call to action"

## Intro

- We might use usage die. I will explain in due time.

## Strong start

- Deepfolk come, **afraid**, to kill Dolman + Amyria. The others go up. Party needs to act.

## Potential scenes

- Party retreating to 2nd level, with Deepfolk chasing them
	- Roll a reaction to see if Cagoth-Ze would handle them to the Deepfolk
- Party leaves Level 3:
	- Through Level 2 --> level 1 --> [dannamore](arrival/locations/dannamore.md) or ruins in Ammuinoth (here they see the **umbilicals**)

## Information pool

[Information Pool](../_informationPool.md)

## Locations

```dataview
table without ID link(file.link, name) AS "Name", hex as "Hex Code", sub as "Sub-location", type as "Type", rank as "Rank", status as "Status"
from "campaign"
WHERE category = "location" AND campaign = "Arrival" AND land = "Maqqatba" AND region = "Linhe"
sort hex asc
```

## Relevant NPCs

```dataview
table without ID link(file.link, name) AS "Name", type AS Species, cr AS CR, char_tags as "Tags", location as Location, faction as Faction
from "campaign"
WHERE category = "npc" AND tags = "current"
sort file.name asc
```

## Potential treasures

- ...

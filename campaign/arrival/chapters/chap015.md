---
category: chapter
part: 2
name: The third level
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

# Chapter 14 The Deepfolk

## Planning checklist

- [x] Debrief: summarise previous chapter and distribute xp
- [x] Commit next chapter draft
- [x] Clean up previous chapter files, final commit
- [x] Update inkarnate maps (if applicable)
- [ ] Evaluate new game date
- [ ] Define a consequence in the world of the actions of the PCs on the previous session (consider snoozing hooks)
- [ ] Review [Abridged](../context/abridged.md)
- [ ] Review and organise [_arrivalNotions](../_arrivalNotions.md)
- [ ] Review and organise Sly Flourish secrets for Holzander 15 jan
- [ ] Think about characters, write motivations & hooks, and bring one background bit to the session
- [ ] Define party rank and XP ([_arrivalTracker](../_arrivalTracker.md))
- [ ] Review [Fronts](../factions/_fronts.md) and check if new front has materialised
- [ ] Review [Factions](../factions/_factionGame.md) and run one [faction turn](../../../rules/factionRules.md), if last turn was 3+ game weeks ago, including decide what remaining relevant NPCs are doing, and their respective checks (Background Actors, wwn334)
- [ ] Detail strong start
- [ ] Outline potential scenes, drafting locations, NPCs and encounters as needed. Define alternatives to combat for all scenes.
- [ ] Review and order/highlight information pool.
- [ ] Outline and update location notes, reviewing scenes and secrets
- [ ] Outline potential NPCs, reviewing all above
- [ ] Define treasure
- [ ] Update random encounter tables
- [ ] Prepare Owlbear, if applicable


## Characters

```dataview
table without ID link(file.link, name) AS "Name", species AS "Species", level AS "Level", xp, ac AS "AC", sanity AS "Sanity", artefacts AS "Artefacts"
from "campaign"
WHERE type = "pc" & relevant = true
sort file.name asc
```

### Motivations

- **Dolman**: Find Galiera, free Fuko from Ghuse
- **Guilf**: Find out more about The Void, and why it is so dark, and why his mother sold his soul.
- **Amyria**: Protect little Guilf, find the Angel Hound and free her.

## Intro

- ...

## Strong start

- ...

## Potential scenes

- Danaska has a heated debate with Cagoth:
	- Roll a reaction to see what she thinks of the PCs sleeping with Cagoth-ze.
	- She updates that Ushulx did her damned ritual, and sacrificed the stupid ogre, and then fled.
- Party retreating to 2nd level, with Deepfolk chasing them
	- Roll a reaction to see if Cagoth-Ze would handle them to the Deepfolk
- Party tries to negotiate with the Deepfolk
	- There are lost treasures on the clacking caverns that they would like to have.

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

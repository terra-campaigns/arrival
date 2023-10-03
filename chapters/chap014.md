---
category: chapter
part: 2
name: The Deepfolk
world: Latter Earth
campaign: Arrival
game_date: 3877.6F1
season: winter (corrected)
location: Holzander
pcs: [Dolman, Guilf, Amyria, B3k]
members: 3+
party_rank: 1.8
xp: 3020
tags: 
---

# Chapter 14 The Deepfolk

## Planning checklist

- [x] Summarise previous chapter and distribute xp
- [x] Commit next chapter draft
- [x] Clean up previous chapter files, final commit
- [x] Update inkarnate maps (if applicable)
- [x] Evaluate new game date
- [x] Define a consequence in the world of the actions of the PCs on the previous session (consider snoozing hooks)
- [x] Review [Abridged](../context/abridged.md)
- [x] Review and organise [_arrivalNotions](arrival/_arrivalNotions.md)
- [x] Review and organise Sly Flourish secrets for Holzander 15 jan
- [x] Think about characters, write motivations & hooks, and bring one background bit to the session
- [x] Define party rank and XP ([_arrivalTracker](../_arrivalTracker.md))
- [x] Review [Fronts](../factions/_fronts.md) and check if new front has materialised
- [x] Review [Factions](../factions/_factionGame.md) and run one [faction turn](../../../rules/factionRules.md), if last turn was 3+ game weeks ago, including decide what remaining relevant NPCs are doing, and their respective checks (Background Actors, wwn334)
- [x] Detail strong start
- [x] Outline potential scenes, drafting locations, NPCs and encounters as needed. Define alternatives to combat for all scenes.
- [x] Review and order/highlight information pool.
- [x] Outline and update location notes, reviewing scenes and secrets
- [x] Outline potential NPCs, reviewing all above
- [x] Define treasure
- [x] Update random encounter tables
- [x] Prepare Owlbear, if applicable


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

- Simplified heroic rule for OSR PC (Brilhorte) - quick explanation.
- Cinematic advantage
- Open dice and FWN

## Strong start

- **Cagoth-ze gifts the Brilhorte 3000 construct to the party**
	- "If you are going downstairs you will face an army, before you can face all the evil of Gellert and Imortra. You will need help, friends. Make sure you always have a way back here - you can rest on my library if you need."

## Potential scenes

- First encounter with Deepfolk, roll reaction to see if they shoot directly.
- Earthquake due to umbilicals, voice of Ethux'zhur: "yes, yes, feed me!!"

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

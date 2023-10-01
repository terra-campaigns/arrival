---
category: chapter
part: 2
name: 
world: Latter Earth
campaign: Arrival
game_date: 3877.6F5
season: winter
location: Holzander
pcs: [Dolman, Guilf, Amyria, B3k]
members: 3+
party_rank: 2.0
xp: 3680
tags: 
---

# Chapter 16

## Planning checklist

- [x] Debrief: summarise previous chapter and distribute xp
- [x] Commit next chapter draft
- [x] Clean up previous chapter files, final commit
- [x] Update inkarnate maps (if applicable)
- [x] Evaluate new game date
- [x] Define a consequence in the world of the actions of the PCs on the previous session (consider snoozing hooks)
- [x] Review [Abridged](../context/abridged.md)
- [ ] Review and organise [_arrivalNotions](campaign/arrival/_arrivalNotions.md)
- [x] Review and organise Sly Flourish secrets for Holzander (if applicable)
- [ ] Think about characters, write motivations & hooks
- [x] Define party rank and XP ([_arrivalTracker](../_arrivalTracker.md))
- [x] Review [Fronts](../factions/_fronts.md) and check if new front has materialised if the group has reached a new integer level average.
- [x] Review [Factions](../factions/_factionGame.md) and run one [faction turn](../../../rules/factionRules.md), if last turn was 3+ game weeks ago, including decide what remaining relevant NPCs are doing, and their respective checks (Background Actors, wwn334)
- [x] Detail strong start
- [ ] Outline potential scenes, drafting locations, NPCs and encounters as needed. Define alternatives to combat for all scenes.
- [ ] Review and order/highlight information pool.
- [ ] Outline and update location notes, reviewing scenes and secrets
- [ ] Outline potential NPCs, reviewing all above
- [ ] Define treasure
- [ ] Update random encounter tables
- [ ] Prepare Owlbear, if applicable

## Character motivations

- **Dolman**: Find Galiera, free Fuko from Ghuse
- **Guilf**: Find out more about The Void, and why it is so dark, and why his mother sold his soul.
- **Amyria**: Protect little Guilf, find the Angel Hound and free her, feels the Holzander castle is her "call to action"

Mr Void cult - ngar tho are in the city as well
Diamonds and pots purchase
Rest
Magic potions (stationary traders because of the rifts - they stopped traveling)
Dolman wants to make a pact with Kimbarak
Where are the kiranu?

Check one city of poison dungeon for Eyaram - where the mercians are meeting


Outline
- Problem
- Person
- Place
## Intro

- 

## Strong start

- Fight the 3 phase spiders (or run to the city)

## Potential scenes

IDEAS

- What is the FFKA doing with the umbilicals, how is Eyaram organised
	- Prep Eyaram
- Deepfolk change in approach now?
	- They should not be in chase / guerrilla fights anymore. They will only act from their own level and, it required to chase characters, will do so in large groups.
	- The deepfolk are now separated in a more violent group, and in a group that is more interested in negotiating with the PCs - define which is which and their locations. 
- Raise levels of random encounters.




- Party finds Galiera, she is barely alive and needs professional care (minimally in Mystra's Temple)
	- She has a d10 usage dice days of life in her. After a day is passed, roll the die and in a 1 or 2, reduce the die size.
- Party tries to negotiate with the Deepfolk
	- There are lost treasures on the clacking caverns that they would like to have.
	- One of these treasures is Kimbarak's Helm
- Deepfolk want Kimbarak's hands
	- One small unit will follow the PCs for it. They might trade it for the PCs escape
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

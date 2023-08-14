---
category: chapter
part: 2
name: Finding Holzander once more
world: Latter Earth
campaign: Arrival
game_date: 3877.6C6
season: autumn
location: 
pcs: [Miraak, Dolman, Kethra, Guilf, Amyria]
party_level: 6
members: 5
party_tier: 2
party_rank: 2
xp: 2700 -20%
dc_min: 14
cr_gauges: '[10, 14, 17, 22]'
consMgcItm: 2xB
permMgcItem: F
hoardTreasure: 0.6
tags: 
---

# Chapter 12 Finding Holzander once more

## Planning checklist

- [x] Summarise previous chapter and distribute xp
- [x] Clean up previous chapter files, final commit
- [x] Update inkarnate maps (if applicable)
- [x] Define a consequence in the world of the actions of the PCs on the previous session (consider snoozing hooks)
- [x] Review [Abridged](../context/abridged.md)
- [x] Review and organise [Notions](../../notions.md)
- [x] Review and organise Sly Flourish secrets for Holzander
- [x] Think about characters, write motivations & hooks, and bring one background bit to the session
- [x] Define party level, easy DC, deadly CR, XP and treasure benchmarks ([_arrivalTracker](../_arrivalTracker.md))
- [x] Review [Fronts](../factions/_fronts.md) and check if new front has materialised
- [x] Review [Factions](../factions/_factionGame.md) and run one [faction turn](../../../rules/factionRules.md), if last turn was 3+ game weeks ago, including decide what remaining relevant NPCs are doing, and their respective checks (Background Actors, wwn334)
- [x] Detail strong start
- [x] Outline potential scenes, drafting locations, NPCs and encounters as needed. Define alternatives to combat for all scenes.
- [x] Define secrets & clues, adding links to them in scenes
- [x] Outline and update location notes, reviewing scenes and secrets
- [x] Outline potential NPCs, reviewing all above
- [x] Define treasure
- [x] Update random encounter tables
- [x] Prepare Owlbear, if applicable


## Characters

```dataview
table without ID link(file.link, name) AS "Name", species AS "Species", level AS "Level", xp, ac AS "AC", sanity AS "Sanity", artefacts AS "Artefacts"
from "campaign"
WHERE type = "pc"
sort file.name asc
```

### Motivations
- **Dolman**: Find Galiera, learn about her stone, free Fuko from Ghuse
- **Miraak**: Prove himself and win back the respect of the Nurderad, find the shadow dragon
- **Guilf**: Find out more about The Void, and why it is so dark
- **Amyria**: Ammuinoth lore, protect little Guilf, find the Angel Hound and free her.
- **Kethra**: Find the purple dragon / shadow dragon

## Intro

- New sanity mechanics: scenes finish with sanity checks, if appropriate.
- Hex rank: the further from roads and settlements more dangerous the hex is. Laird, ruins etc are always more dangerous than their surroundings. The deeper into the earth, also more dangerous.
- New XP based on hex rank too.
- All NPCs have initiative of 12, PCs navigate around.

## Strong start

- **Location: [durnum](../locations/durnum.md)**
- Chat with dwarves about:
	- Uncomfortable with Amyria
	- Their current condition (**very thin, very poor**), dust elf pressure for metals, etc
	- The war in the south, and migrating Kiranu
	- The ancient construction shaft 
	- Pleas: **has Kimbarak gave up on them? can the dust elves refrain from the quotas?**
	- Help them decide if they stay, or go deep?

## Potential scenes

- Travel to Holzander (through the Ammuinoth or desert - if desert no wandering encounter in travel to account for dennamore)
- [dannamore](../locations/dannamore.md) - anak, thunderstorm, elementals
- [holzanderCastleL1](../locations/holzanderCastleL1.md)
	- Undead in the crypt
	- Meet Ushulx again, maybe see the altar

## Information pool

[Information Pool](../_informationPool.md)

## Locations

Assigning locations to hexes:
- **1 in 10** If alongside the route (3 hex wide): it has been partially pre-generated in prep
- **2 in 10** If 3+ hex away from road

```dataview
table without ID link(file.link, name) AS "Name", hex as "Hex Code", sub as "Sub-location", type as "Type", rank as "Rank", status as "Status"
from "campaign"
WHERE category = "location" AND campaign = "Arrival" AND land = "Maqqatba" AND region = "Linhe"
sort hex asc
```

### Random encounters

[Wandering Encounters in Linhe](../context/secrets/secretsRealms.md#Wandering%20Encounters%20in%20Linhe)


## Relevant NPCs

```dataview
table without ID link(file.link, name) AS "Name", type AS Species, cr AS CR, char_tags as "Tags", location as Location, faction as Faction
from "campaign"
WHERE category = "npc" AND tags = "current"
sort file.name asc
```

## Potential treasures

- ...

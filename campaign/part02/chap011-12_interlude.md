---
category: chapter
part: 2
name: 'Interlude: Dream of Makab'
world: Latter Earth
campaign: Arrival
game_date: '?'
season: '?'
location: [Kelipah of Makab]
pcs: [Dream versions of Dolman, Amyria and Guilf]
party_level: 1
members: 3
party_tier: 1
party_rank: 0
xp: 0
dc_min: 11
cr_gauges: '[1]'
consMgcItm: 
permMgcItem: 
hoardTreasure: 
tags: 
---

# Chapter 11-12 Interlude (one-shot): Dream of Makab

## Planning checklist

- [x] Define party level, easy DC and deadly CR benchmarks
- [x] Detail strong start
- [ ] Outline potential scenes, drafting locations, NPCs and encounters as needed. Define alternatives to combat for all scenes (1 or 2)
- [ ] Define secrets & clues, adding links to them in scenes
- [ ] Outline fantastic locations, reviewing scenes and secrets
- [ ] Outline potential NPCs, reviewing all above
- [ ] Prepare Owlbear, if applicable
- [ ] Post: update abridged

## Intro

- 

## Strong start

- You are all in a ship, navigating a starless and moonless night in a turbulent see.
- There are some light clouds in the sky.
- You are under the command of Kimbarak, a strong human sea captain, and you are in a "mission".
	- The ship top-rank crew consists of Kimbarak, first mate, quartermaster and a sailing master.
	- The crew of seafarers consists of 8 men, including the 3 PCs.
	- There is one cook and one carpenter.
- You see in distance a cyclopean island, which you know is what you've been looking for
- STR DC 6 to not fall from the ship because of the waves or docking

## Potential scenes

- ...


## Locations

Assigning locations to hexes:
- **1 in 10** If alongside the route (3 hex wide): it has been partially pre-generated in prep
- **2 in 10** If 3+ hex away from road

```dataview
table without ID link(file.link, name) AS "Name", hex as "Hex Code", sub as "Sub-location", type as "Type", rank as "Rank", status as "Status"
from "campaign"
WHERE category = "location" AND campaign = "Arrival" AND land = "Maqqatba" AND region = "Hincland"
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

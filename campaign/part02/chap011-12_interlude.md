---
category: chapter
part: 2
name: Dream of Makab
world: Latter Earth
campaign: Arrival
game_date: 
season: 
location: [Kelipah: Makab]
pcs: [Dream versions of Dolman, Amyria and Guilf]
party_level: 1
members: 3
party_tier: 1
party_rank: 0
xp: 
dc_min: 
cr_gauges: ''
consMgcItm: 
permMgcItem: 
hoardTreasure: 
tags: 
---

# Chapter 11-12 Interlude (one-shot) Dream of Makab

## Planning checklist

- [ ] Define party level, easy DC and deadly CR benchmarks
- [ ] Detail strong start
- [ ] Outline potential scenes, drafting locations, NPCs and encounters as needed. Define alternatives to combat for all scenes (1 or 2)
- [ ] Define secrets & clues, adding links to them in scenes
- [ ] Outline fantastic locations, reviewing scenes and secrets
- [ ] Outline potential NPCs, reviewing all above
- [ ] Prepare Owlbear, if applicable
- [ ] Post: update abridged

## Intro

- **Combat with dynamic positioning (smart creatures), using of terrain, strategy**

## Strong start

- 

## Potential scenes

- ...


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

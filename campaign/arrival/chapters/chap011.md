---
category: chapter
part: 2
name: Aivridyt's past
world: Latter Earth
campaign: Arrival
game_date: 3877.6B4
season: autumn
location: [Linhe wastelands]
pcs: [Miraak, Dolman, Kethra, Guilf, Amyria]
party_level: 5
members: 5
party_tier: 2
party_rank: 1
xp: 1770 +10%
dc_min: 13
cr_gauges: '[7, 8, 10, 14]'
consMgcItm: 3xA
permMgcItem: --
hoardTreasure: 0.2
tags: 
---

# Chapter 11 Aivridyt's past

## Planning checklist

- [x] Summarise previous chapter
- [x] Clean up previous chapter files, final commit
- [x] Update inkarnate maps (if applicable)
- [x] Define a consequence in the world of the actions of the PCs on the previous session (consider snoozing hooks)
- [x] Move unused stuff from previous chapter (next chapter or notions)
- [x] Review [Abridged](../context/abridged.md)
- [x] Review and organise [Notions](../../notions.md)
- [x] Review and organise Sly Flourish secrets for Holzander
- [x] Think about characters, write motivations & hooks, and bring one background bit to the session
- [x] Define party level, easy DC, deadly CR, XP and treasure benchmarks ([_campaignTracker](../_campaignTracker.md))
- [x] Review [Fronts](../factions/_fronts.md) and check if new front has materialised
- [x] Review [Factions](../factions/_factionGame.md) and run one [faction turn](../../../rules/factionRules.md), if applicable
- [x] Decide what remaining relevant NPCs are doing, and their respective checks (wwn334)
- [x] Detail strong start
- [x] Outline potential scenes, drafting locations, NPCs and encounters as needed. Define alternatives to combat for all scenes (1 or 2)
- [x] Define secrets & clues, adding links to them in scenes
- [x] Outline fantastic locations, reviewing scenes and secrets
- [ ] Outline potential NPCs, reviewing all above
- [x] Define treasure
- [ ] Prepare Owlbear, if applicable


## Characters

```dataview
table without ID link(file.link, name) AS "Name", species AS "Species", level AS "Level", xp, ac AS "AC", sanity AS "Sanity", artefacts AS "Artefacts"
from "campaign"
WHERE type = "pc"
sort file.name asc
```

### Motivations
- **Dolman**: Find Galiera, learn about her stone
- **Miraak**: Prove himself and win back the respect of the Nurderad, find the shadow dragon
- **Guilf**: Find and kill Sergarus, talk with mother, scare the shit out of everyone
- **Amyria**: Ammuinoth lore, protect little Guilf
- **Kethra**: Find the purple dragon / shadow dragon

## Intro

- **Combat with dynamic positioning (smart creatures), using of terrain, strategy**

## Strong start

- Location: [TempleOfRemains](../locations/templeOfRemains.md)
- Roll perception check DC 13
- All the rest of the inhabitants (average CR10) come to where the fireball has exploded.
	- **Dynamic positioning of creatures (are they smart?)**
- **PCs need to figure out how to kill a giant creature**
- Exits
	- Tunnel to the Ammuinoth
	- Pierce through the undead

## Potential scenes

- PCs **flee to Ammuinoth** from tunnel on Temple of Remains, and find [Aivridyt](../npcs/aivridyt.md)'s abandoned nest.
	- Secrets about imperator dragons in old parchment
- Loot the Temple of remains (**crumbling**), now clear of undead
	- **Statue of Ghuse and Grezar**, amongst other 2 unknown figures. Book with history of Avryindt.
- PCs find the **Dead God**, and meet a random encounter
- Visit to the **dwarf enclave**
	- Dwarves have a subconscious connection with the weaving of the world
- Other random exploration locations (see tables below)
- **Curfew in [Eyaram](../locations/eyaram.md)**, possible identification by the FFKA
	- Highlight information about Linhe
- **Dannamore** and entrance to Holzander, in a desert thunderstorm
	- Anaks (who can be partnered with) and elemental
	- Flee combat to within the castle

## Information pool

[Information Pool](_informationPool.md)

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

- 500 gp, 30 pp, black onyx (150 gp), jade (100 gp), jet (100 gp)
- Ring of Warmth (uncommon, dmg 193)
- Agate Eyes (gb 198)

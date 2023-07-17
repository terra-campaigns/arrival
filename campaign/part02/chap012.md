---
category: chapter
part: 2
name: xx
world: Latter Earth
campaign: Arrival
game_date: 3877.6C6
season: autumn
location: [Linhe wastelands]
pcs: [Miraak, Dolman, Kethra, Guilf, Amyria]
party_level: 6
members: 5
party_tier: 2
party_rank: 2
xp: 2160 +10%(?)
dc_min: 14
cr_gauges: '[10, 14, 17, 22]'
consMgcItm: 2xB
permMgcItem: F
hoardTreasure: 0.6
tags: 
---

# Chapter 12 xxx

## Planning checklist

- [x] Summarise previous chapter
- [x] Clean up previous chapter files, final commit
- [x] Update inkarnate maps (if applicable)
- [x] Define a consequence in the world of the actions of the PCs on the previous session (consider snoozing hooks)
- [x] Review [Abridged](../context/abridged.md)
- [x] Review and organise [Notions](../../notions.md)
- [x] Review and organise Sly Flourish secrets for Holzander
- [x] Think about characters, write motivations & hooks, and bring one background bit to the session
- [x] Define party level, easy DC, deadly CR, XP and treasure benchmarks ([_campaignTracker](../_campaignTracker.md))
- [x] Review [Fronts](../factions/_fronts.md) and check if new front has materialised
- [x] Review [Factions](../factions/_factionGame.md) and run one [faction turn](../../rules/factionRules.md), if last turn was 3+ game weeks ago.
- [ ] Decide what remaining relevant NPCs are doing, and their respective checks (wwn334)
- [ ] Detail strong start
- [ ] Outline potential scenes, drafting locations, NPCs and encounters as needed. Define alternatives to combat for all scenes (1 or 2)
- [ ] Define secrets & clues, adding links to them in scenes
- [ ] Outline fantastic locations, reviewing scenes and secrets
- [ ] Outline potential NPCs, reviewing all above
- [ ] Define treasure
- [ ] Prepare Owlbear, if applicable


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

- New sanity mechanics
- Combat mechanics and role play
	- All NPCs have initiative of 12
	- Toll either Morale or Intellect if there is a hit creature
	- Based on roll, NPCs talk to PCs
	- Consider dynamic positioning, terrain and strategy
	- Attacks

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


Dark gift Ravenloft?
A dwarf wants to have the kimbarak glauntets
Dwarf connection with the legacy
Kimbarak's demise secrets
Front: Khato's armies lose in the south, Kiranu and others will need to migrate north - start Turnskull faction game for measuring it's expansion 
kiranu population migrating to Glasrah, the alliance of Nurderad, Kiranu, Frostfallen elves and anaks are fighting the south to Turnskull.

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

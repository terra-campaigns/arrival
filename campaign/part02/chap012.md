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
- [x] Review [Factions](../factions/_factionGame.md) and run one [faction turn](../../rules/factionRules.md), if last turn was 3+ game weeks ago, including decide what remaining relevant NPCs are doing, and their respective checks (Background Actors, wwn334)
- [x] Detail strong start
- [x] Outline potential scenes, drafting locations, NPCs and encounters as needed. Define alternatives to combat for all scenes.
- [ ] Define secrets & clues, adding links to them in scenes
- [ ] Outline and update location notes, reviewing scenes and secrets
- [ ] Outline potential NPCs, reviewing all above
- [ ] Define treasure
- [ ] Update random encounter tables
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

- New sanity mechanics: scenes finish with sanity checks, if appropriate
- Combat mechanics and roleplay
	- All NPCs have initiative of 12, PCs navigate around.
	- NPCs round:
		- 1. Morale/Instinct (if appropriate)
		- 2. Chatter and dynamic positioning
		- 3. Actions (attacks)

## Strong start

- **Location: [durnum](../locations/durnum.md)**
- Chat with dwarves about:
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
- [holzanderCastleL2](../locations/holzanderCastleL2.md)
	- Social challenge Danaska & Cagoth-ze
		- Roll 1 in 6 for wandering encounters: On a 1, roll a d4, 1, 2 they meet Cagoth-ze first; 3,4 they meet Danaska first
		- Deal with Cagoth - get rid of the Ngar'tho or get rid of Danaska and her minions. And he will tell how to get to the library
		- Deal with Danaska - steal Cagoth-ze ring and she will tell where Gaelira is.
		- Deal with Lasbascilag - ([read thoughts](http://dnd5e.wikidot.com/spell:detect-thoughts) PCs roll save) set him free and he will tell them: where Galiera is, what the stone is, how to kill the purple evil, why the Void is so dark, how to find the library, how to save the angel hound. Choose 3 of these secrets (can be convinced to tell more).

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

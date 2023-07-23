---
category: chapter
part: 2
name: xx
world: Latter Earth
campaign: Arrival
game_date: 3877.6C6
season: autumn
location: xx
pcs: [Miraak, Dolman, Kethra, Guilf, Amyria]
party_level: 6
members: 5
party_tier: 2
party_rank: 2
xp: 
tags: 
---

# Chapter 13 xxx

## Planning checklist

- [x] Summarise previous chapter and distribute xp
- [x] Commit next chapter draft
- [x] Clean up previous chapter files, final commit
- [ ] Update inkarnate maps (if applicable)
- [ ] Evaluate new game date
- [ ] Define a consequence in the world of the actions of the PCs on the previous session (consider snoozing hooks)
- [ ] Review [Abridged](../context/abridged.md)
- [ ] Review and organise [Notions](../../notions.md)
- [ ] Review and organise Sly Flourish secrets for Holzander
- [ ] Think about characters, write motivations & hooks, and bring one background bit to the session
- [ ] Define party level, easy DC, deadly CR, XP and treasure benchmarks ([_campaignTracker](../_campaignTracker.md))
- [ ] Review [Fronts](../factions/_fronts.md) and check if new front has materialised
- [ ] Review [Factions](../factions/_factionGame.md) and run one [faction turn](../../rules/factionRules.md), if last turn was 3+ game weeks ago, including decide what remaining relevant NPCs are doing, and their respective checks (Background Actors, wwn334)
- [ ] Detail strong start
- [ ] Outline potential scenes, drafting locations, NPCs and encounters as needed. Define alternatives to combat for all scenes.
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

- Sanity check for attacking innocents (1d6 for each, 2d6 for Kethra)?

## Strong start



## Potential scenes

- [holzanderCastleL1](../locations/holzanderCastleL1.md)
	- Undead in the crypt
	- Meet Ushulx again, maybe see the altar
- [holzanderCastleL2](../locations/holzanderCastleL2.md)
	- Social challenge Danaska & Cagoth-ze
		- Roll 1 in 6 for wandering encounters: On a 1, roll a d4, 1, 2 they meet Cagoth-ze first; 3,4 they meet Danaska first
		- Deal with Cagoth - get rid of the Ngar'tho or make Danaska and her minions get lost. And he will tell how to get to the library
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

- ...

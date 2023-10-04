---
category: chapter
part: 2
name: The Ancient Elven Library
world: Latter Earth
campaign: Arrival
game_date: 3877.6C7
season: autumn
location: Holzander
pcs: [Miraak, Dolman, Kethra, Guilf, Amyria]
members: 5
party_rank: 2.8
xp: 2450
dc_min: 14
tags: 
---

# Chapter 13 The Ancient Elven Library

## Planning checklist

- [x] Summarise previous chapter and distribute xp
- [x] Commit next chapter draft
- [x] Clean up previous chapter files, final commit
- [x] Update inkarnate maps (if applicable)
- [x] Evaluate new game date
- [x] Define a consequence in the world of the actions of the PCs on the previous session (consider snoozing hooks)
- [x] Review [Abridged](_published/arrival/abridged.md)
- [x] Review and organise Notions
- [x] Review and organise Sly Flourish secrets for Holzander 15 jan
- [x] Think about characters, write motivations & hooks, and bring one background bit to the session
- [x] Define party rank, xp and DC min, XP ([_arrivalTracker](../_arrivalTracker.md))
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

- Division of the group - Tom/Babi will choose a scene where they decide when they will depart?
- Sanity check for attacking innocents (1d6 for each, 2d6 for Kethra)?

## Strong start

- 1d4 Cagoth-ze or Danaska come to level 1 to speak with Ushulx about not making any rituals for the coming days. He/She will need the Brezal Paths powers.
- He/She sees the PCs and make their proposal:
	- Deal with Cagoth - get rid of the Ngar'tho or make Danaska and her minions get lost. And he will tell how to get to the library.
	- Deal with Danaska - steal Cagoth-ze ring and she will tell where Gaelira is.
- Alternative proposal at level 2l ([Lasbascilag](../../../statblocks/ngar-tho.md)): ([read thoughts](http://dnd5e.wikidot.com/spell:detect-thoughts) PCs roll save) set him free and he will tell them: where Galiera is, what the stone is, how to kill the purple evil, why the Void is so dark, how to find the library, how to save the angel hound. Choose 3 of these secrets (can be convinced to tell more).

## Potential scenes

**[Level 1](../locations/holzanderCastleL1.md)**
- Undead keep coming from the shrines

**[Level 2](../locations/holzanderCastleL2.md)**
- Foreshadowing on Imortra and Gellert and the cult to the 'tho?
- Carry out proposal if one was made: [Lasbascilag](../../../statblocks/ngar-tho.md), [Cagothze](../npcs/cagothze.md) or [Danaska](../npcs/danaska.md)
- Separation of the group
- Visit to the library.

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

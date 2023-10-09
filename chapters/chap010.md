---
category: chapter
part: 2
name: Desert road
world: Guemenos
campaign: Arrival
game_date: 3877.6A6
season: autumn
location: [Linhe wastelands]
pcs: [Miraak, Dolman, Kethra, Guilf, Amyria]
party_level: 5
members: 5
party_tier: 2
party_rank: 2.5 (est)
xp: 1620 + 10%
dc_min: 13
cr_gauges: '[7, 8, 10, 14]'
consMgcItm: 3xA
permMgcItem: --
hoardTreasure: 0.2
tags: 
---

# Chapter 10 Desert road

## Reviews for planning

- [x] Summarise previous chapter
- [x] Define a consequence in the world of the actions of the PCs on the previous session (consider snoozing hooks)
- [x] Move unused stuff from previous chapter (next chapter or notions)
- [x] Review [Abridged](_published/arrival/abridged.md)
- [x] Review and organise Notions
- [x] Review and organise Sly Flourish secrets for Holzander
- [x] Think about characters, write motivations & hooks, and bring one background bit to the session
- [x] Define party level, easy DC, deadly CR, XP and treasure benchmarks ([_arrivalTracker](../_arrivalTracker.md))
- [x] Review [Fronts](../factions/_fronts.md) and check if new front has materialised
- [x] Review [Factions](../factions/_factionGame.md) and run one [faction turn](../../../rules/factionRules.md), if applicable
- [x] Decide what remaining relevant NPCs are doing, and their respective checks (wwn334)
- [x] Detail strong start
- [x] Define chapter template (combat, investigation, etc.)
- [x] Outline potential scenes, drafting locations, NPCs and encounters as needed. Define alternatives to combat for all scenes (1 or 2)
- [x] Define secrets & clues, reviewing scenes
- [x] Outline fantastic locations, reviewing scenes and secrets
- [x] Outline potential NPCs, reviewing all above
- [x] Outline potential foes, if not all in an appendix
- [x] Define treasure
- [x] Prepare 2 day and night random encounters 
- [x] Prepare Owlbear, if applicable
- [x] Move big texts to appendix in the file
- [x] Prepare random encounters (linked with secrets) - including random locations
- [ ] Owlbear L3


## Characters

```dataview
table without ID link(file.link, name) AS "Name", species AS "Species", level AS "Level", xp, ac AS "AC", initiative AS "INI", speed, darkvision AS "DKVS", sanity AS "SNTY", skills.perception AS "PCPT", skills.investigation AS "IVST", skills.insight AS "IGHT", skills.persuasion AS "PSON", skills.stealth AS "SLTH", artefacts AS "Artefacts"
from "campaign"
WHERE type = "pc"
sort file.name asc
```

### Motivations
- **Dolman**: Find Galiera, learn about her stone
- **Miraak**: Prove himself and win back the respect of the Nurderad
- **Guilf**: Find and kill Sergarus, talk with mother, scare the shit out of everyone
- **Amyria**: Ammuinoth lore, protect little Guilf
- **Kethra**: Find the purple dragon

## Intro

- Not revising approach to Sanity yet.
- Set session trackers: lost sanity, used HD, turns, explored hexes

## Story scenes

### FFKAs departure

- FFKA scout from Eyaram arrives, there has been another undead attack in the east of the Fort City of Eyaram.
- FFKA is sending a tent
- Sergarus is staying behind.

## Exploration scenes
***Travel from Gimorkoc to Holzander***

![|500](https://i.imgur.com/cERKKSF.png)

- 1 in 8 for each new hex, run hex table below (done in prep)
- 1 in 8 for night camping: [encounter generation](https://www.chaosgen.com/dnd5e/encounter) level 5, Shadowfell, MM, mix, generate 10, roll 1d10
- 1 in 8 each day PCs spend in a single hex: [encounter generation](https://www.chaosgen.com/dnd5e/encounter) level 4, Desert, MM, mix, generate 10, roll 1d10
- 1 in 8 if foraging: [encounter generation](https://www.chaosgen.com/dnd5e/encounter) level 3, Desert, MM, mix, generate 10, roll 1d10
- **Find ways to give secrets during exploration scenes.**

| HexNo | Type       | Description and tags                                                           |
| ----- | ---------- | ------------------------------------------------------------------------------ |
| 12 // | Community  | Bandit meeting camp: Brilliant innovation & Warring council                    |

### Nurderad outcast

- **Expect Miraak to be the most engaged PC**
- Scene: While travelling, they meet Gulthas Morseth, a dragonborn outcast from north Nurderad. He has a lair in the road, with oil barrels, traps, etc.
- Dramatic question: Information on the battlemage Grezar ([Aivridyt](../npcs/aivridyt.md)) and the attack under his influence. After the mines were clear, Aivrindyt took her true form and executed the dragonborn. Outcast has been living alone in the north desert for the last 10 years - ashamed to come back to Nurderad.
- **Grezar was responsible for Miraak's accident in the war in the south**
- *Eating twice dead barbecue*

![|500](https://i.imgur.com/hDmZc3D.png)

### Temple of Remains

[Temple of Remains](../locations/templeOfRemains.md)

## Information Pool

**Secrets shared**

- Dark thunderstorms a becoming very frequent and the [Desolate Flats](_published/arrival/context.md#Desolate) are becoming even more bare, and the undead are now coming - related to the weakening of the Angel Hound spirit (and the Brezal Paths energy overflowing).
- #puzzle The Rurkinar need rallying, otherwise they will collapse under the FFKA and the undead attacks
- FFKA knows the Glasrath Defenders have not perished - FFKA keeping eyes open to find and interrogate then. They are a family with 2 kids and an old brute.
- Rurkinar is hardly answering the prayers
- #spoiler Theory around existence of shadow dragons.

![_informationPool](../_informationPool.md)


## Potential treasures  

- 1000 gp
- Stones
	- Amber (translucent rich gold, 100gp)
	- Jade (translucent white, 100gp)
- [Potion of Greater Healing](https://www.dndbeyond.com/magic-items/potion-of-healing)
- [Scroll of Ceremony](https://www.dndbeyond.com/spells/ceremony)
- [Scroll of Prestidigitation](https://www.dndbeyond.com/spells/prestidigitation)

## Relevant settlements  

```dataview
table without ID link(file.link, name) AS "Name", province AS "Province", population AS "Population", culture AS "Cultures", religion AS "Religions", factions AS "Factions"
from "campaign"
WHERE type = "settlement" AND tags = "relevant"
sort file.name asc
```
  
## Relevant NPCs  

- Construct NPCs:
	- Character tags (AotLE)
	- Simple sheet (if required)
	- Image
	- Roleplay aspects:
		- one distinct physical aspect
		- one distinct voice aspect
		- one signature phrase or gesture

- **Gulthas Morseth**: Dragonborn outcast (knight), that was on the 3868 NC's raid of [Tolfoddund Mines](../locations/tfddMines.md). He lives in the roads protecting the weak, as a form of redemption for his sins.

### Current NPCs
```dataview
table without ID link(file.link, name) AS "Name", type AS Species, cr AS CR, char_tags as "Tags", location as Location, faction as Faction
from "campaign"
WHERE category = "npc" AND tags = "current"
sort file.name asc
```

### Dormant NPCs
```dataview
table without ID link(file.link, name) AS "Name", type AS Species, cr AS CR, char_tags as "Tags", location as Location, faction as Faction
from "campaign"
WHERE category = "npc" AND tags != "current"
sort file.name asc
```


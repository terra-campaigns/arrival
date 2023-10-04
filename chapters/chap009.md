---
category: chapter
part: 2
name: The Rurkinar ritual
world: Guemenos
campaign: Arrival
game_date: 3877.5F6
season: summer
location: [Gimorkoc]
pcs: [Miraak, Dolman, Kethra, Guilf, Amyria]
party_level: 4
members: 5
party_tier: 1
party_rank: 2.0 (est)
xp: 1400
dc_min: 13
cr_gauges: '[6, 8, 9, 12]'
consMgcItm: 2xA
permMgcItem: F
hoardTreasure: 1.6
tags: 

---

# Chapter 9 The Rurkinar Ritual

## Reviews for planning

- [x] Summarise previous chapter
- [x] Update template
- [x] Move unused stuff from previous chapter (next chapter or notions)
- [x] Review [Abridged](_published/arrival/abridged.md)
- [x] Review and organise Notions
- [x] Review and organise Sly Flourish secrets for Holzanderd
- [x] Think about characters, write motivations & links, and bring one background bit to the session
- [x] Define party level, easy DC, deadly CR, XP and treasure benchmarks ([_arrivalTracker](../_arrivalTracker.md))
- [x] Review [Fronts](../factions/_fronts.md) and check if new front has materialised
- [x] Review [Factions](../factions/_factionGame.md) and run one [faction turn](../../../rules/factionRules.md), if applicable
- [x] Decide what remaining relevant NPCs are doing, and their respective checks
- [x] Detail strong start
- [x] Outline potential scenes, drafting locations, NPCs and encounters as needed
- [x] Define secrets & clues, reviewing scenes
- [x] Outline fantastic locations, reviewing scenes and secrets
- [x] Outline potential NPCs, reviewing all above
- [x] Outline potential foes, if not all in an appendix
- [x] Define treasure
- [x] Prepare 2 day and night random encounters 
- [x] Prepare Owlbear, if applicable
- [x] Move big texts to appendix in the file
- [x] Prepare random encounters (linked with secrets) - including random locations
- [x] Owlbear: Delamore and Remains
- [ ] Owlbear L3
- [x] Make reminders (2x2 index cards) for pacing
	- [x] combat: describe more and give secrets during it
	- [x] upward and downward beats in sessions


## Characters

```dataview
table without ID link(file.link, name) AS "Name", species AS "Species", level AS "Level", xp, ac AS "AC", initiative AS "INI", speed, darkvision AS "DKVS", sanity AS "SNTY", skills.perception AS "PCPT", skills.investigation AS "IVST", skills.insight AS "IGHT", skills.persuasion AS "PSON", skills.stealth AS "SLTH", artefacts AS "Artefacts"
from "campaign"
WHERE type = "pc"
sort file.name asc
```

### Motivations
- **Dolman**: Find Galiera, learn about her stone
- **Miraak**: Prove and learn about himself
- **Guilf**: Find and kill Sergarus, find mother?
- **Amyria**: Libraries, libraries, books, books
- **Kethra**: Find the purple dragon

## Intro

- Should we change to bi-weekly and have a rule that if we have 3 players we go ahead?
- Gritty healing revision - otherwise we penalise the warlock: use the variant RAW.
	- if required, explain that the intended theme of the game does not match a superhero style (1h later full recover)
- Theme discussion
	- Arrival: A Tale of Wretched Heroes in a Broken World
	- is this the story you want to tell too?
	- or do you want a high fantasy, easy to digest upbeat super hero movie?
- Take note of common languages PCs speak
- 1d6 do decide who reads abridged?

## Strong start

### Chase Imortra

[Chasing rule](https://5e.tools/book.html#dmg,8,chases,0)

**Starting state:**
- 60ft Imortra
- 0ft Dolman, Guilf, Amyria
- -30ft (still pending one sneak action for second circle) Miraak
- Mercian house is 350ft away, with two bends on the streets

**Imortra's strategy:**
1. Run to an empty area of the city
2. Teleport to a roof (action or bonus action)
	1. If followed to the roof, cast mirror image and find a way to get rid of the chaser in the roof
3. Hurt chasers with:
	1. Demon within
	2. Chains of perdition
	3. Banishment (for Guilf)
	4. Phantasmal killer
4. At any time, if struggling with chasers, cast polymorf and run to the mercian house
	1. Allow PCs to see the house she enters - with two Mercians guarding the door
	2. If followed, in the mercian house begin to cast elemental


## Storyline scenes 

### Rurkinar festival and ritual, and FFKA censoring

- The ritual finally completes in an unexpected way: a torrent of rain
- [Imra Advyre](../factions/rurkinar.md#^imraAdvyre) and 10 other cultist are imprisoned, and in the cell the Angel Hound communicates with the shaman, explaining he is imprisoned in the lost castle of the Holzander's.
- [Sergarus](arrival/npcs/Sergarus.md) arrive in the next day to interrogate cultists.
- Imra becomes troubled and mad.
- *Something else has to create a problem - tbd at table.*

> **Mad poem about the staff**
> 
> *Mmm... the staff, the Thalia's one,
> It's got the power, oh yes, it's second to none,
> Lightning and thunder, its magic can stun,
> She imbued the gods, and their power she spun.
> 
> Thalia was an acolyte, young but wise,
> She brought the old pantheon to rise,
> Restored their strength with magic ties,
> And now she serves as an Angel in the skies.*

## Information Pool

**Linhe**
- [x] #puzzle FFKA very little knowledge about the castle - and just a bunch of religious bullies
- [x] #context Darklake in the Ghost Domain connects this world with the world of the dead. A great and terrible river runs underneath the world in Linhe – this is actually a branch of the River Styx.
- [x] #spoiler FFKA East tried to incarcerate Otaehryn Valdove (Rurkinar chieftan) in the city of Linhe
- [x] #spoiler An influential FFKA East plans to overthrow General Drakov during the next zombie assault on Linhe by sabotaging the city's defences and admitting the zombies to the Bastion Ward.

## Potential treasures  

## Relevant settlements  

```dataview
table without ID link(file.link, name) AS "Name", province AS "Province", population AS "Population", culture AS "Cultures", religion AS "Religions", factions AS "Factions"
from "campaign"
WHERE type = "settlement" AND tags = "relevant"
sort file.name asc
```
  
## Relevant NPCs  

- **Gulthas Morseth**: Dragonborn outcast (knight), that was on the 3868 NC's raid of [Tolfoddund Mines](../locations/tfddMines.md). He lives in the roads protecting the weak, as a form of redemption for his sins. ^Gulthas
- [Imra Advyrye](../factions/rurkinar.md#^imraAdvyre) (Rukinar high priest)

```dataview
table without ID link(file.link, name) AS "Name", species, location, faction
from "campaign"
WHERE type = "npc" AND tags = "relevant"
sort file.name asc
```

## Appendix

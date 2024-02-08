---
name: Underground Travel
game_date: 3909.3B7
pcs: Dolman, Guilf, Amyria
rank: 26
heat: 1
xp: 5420 

meta:
  category: chapter
  campaign: Arrival
  world: Latter Earth
  realm: Maqqatba
  region: Linhe
  location: 
tags: 
---
# Chapter 21 

> [!todo]- Planning checklist
> - [x] Abridge previous chapter and distribute XP
> - [x] Evaluate Heat
> - [x] Commit next chapter draft and check metadata
> - [x] Clean up previous chapter files, update tags and name, make final commit
> - [x] Update (battle)maps, if applicable
> - [x] Define at least one consequence in the world of the actions of the PCs on the previous session, record it in the faction game or notion file
> - [x] Think about characters, write motivations & hooks
> - [x] Evaluate new game date
> - [x] Review Abridged
> - [x] Evaluate Faction turn
> - [x] Review and organise Notions
> - [x] Define XP
> - [x] Detail strong start
> - [x] Outline situations:
> 	- [x] Draft locations 
> 	- [x] Draft NPCs
> 	- [x] Define clocks
> 	- [x] Prepare random encounters table
> - [x] Prepare Owlbear, if applicable
> - [x] Review and order/highlight information pool.
> - [x] Define treasure
> - [x] Update graph view
> - [ ] Print information pool

> [!abstract] Characters' motivations
> - **[Dolman](../pcs/Dolman.md)**: Wake up Gaelira, figure out which side on the war is fighting for Humanity.
> - **[Guilf](../pcs/Guilf.md)**: Exterminate the Ngar'tho 
> - **[Amyria](../pcs/Amyria.md)**: Learn from the book of knowledge. Protect little Guilf, take the Angel Hound to Mystra's temple, destroy the 2 devices left in the castle and kill Gellert

> [!warning] Intro
> - [BookOfKnowledge](../objects/BookOfKnowledge.md): One check per week (see through the illusion move)
> 	- DC 25 for S+ you gain the knowledge you seek as you see true reality (night roads incoming)
> 	- DC 15 for S- you gain the knowledge you seek but you either disturb the illusion or a nightmare senses you 
> 	- F The knowledge collapses your sanity and a nightmare is summoned (sanity check)

> [!danger] Strong start

Travel to [templeMystra](../locations/templeMystra.md) (while reading the [BookOfKnowledge](../objects/BookOfKnowledge.md)?)

> [!example] Situations

**Book of Knowledge, expected questions:**
- **How to wake up [Gaelira](../npcs/Gaelira.md)**: Not only a Dragon-King, but other Sorcerer-Kings from that age might also have the required psionic power. And there is one leading Turnskull. They are in the factory.

**Encounter Filarion or Hermits Crevasse**
[FilarionPapetor](../npcs/FilarionPapetor.md) (or [hermitsCrevasse](../locations/hermitsCrevasse.md)) represents the last remnants of local defenders, driven out by the [Akrasiel](../npcs/Akrasiel.md). They tried to steal [Akrasiel](../npcs/Akrasiel.md)'s sword, but left it behind in their retreat which they desperately need, and they appeal to the PCs to aid them.
- In exchange, they'll pass on information about a Place that offers a good way to get to Mystra's temple without wading through the battlefields.
- **Antagonists**:
	- [Akrasiel](../npcs/Akrasiel.md)
	- Disguised Mercian [antinom](../statblocks/antinom.md) living amongst the hermits
- **Friends**: Do-gooder bandit chief who raids hostile forces [FilarionPapetor](../npcs/FilarionPapetor.md) and scout [Thirteen](../npcs/Thirteen.md)
- **Places**: [CastleTerror](../locations/CastleTerror.md) and the defenders camp in the [hermitsCrevasse](../locations/hermitsCrevasse.md)
- **Complications**: The local community has been wrecked in fighting
- **Things**: [Akrasiel](../npcs/Akrasiel.md)'s sword
- **Tension**: Akrasiel hunts Filarion 

Meet [MustrocHeavymace](../npcs/MustrocHeavymace.md)

**Encounter generator table**

| id | qltRank | partySize | effect |
| ---: | ---: | :--- | :--- |
| 1 | 8 | few | summoned back by the chief |
| 2 | 6 | solo | fleeing a foe |
| 4 | 2 | solo | frightened of something nearby |
| 5 | 6 | many | There are eldritch sigils worked into the decorations |
| 6 | 9 | many | raiding their rivals |
| 7 | 4 | few | protecting their kin (cubs, olds, hurt ones) |
| 8 | 9 | few | waiting in ambush for someone |
| 9 | 6 | solo | Great stone wall, intact, with tower fortifications spaced at one-mile intervals |

> [!info]- Information pool
> ![Information pool](arrival/_informationPool.md)

> [!check] Treasure

**Cryptic & Exotic**: Does not look like treasure, and is not common here. **Artistic curtains.**
- **Origin**: Tribute to the owner from minions or vassals
- **Bulk**: Attached. The treasure is an object that is physically attached to some part of the architecture, and something bad will happen if it's pried loose.
- **Defences**: Behind a door or barrier only the owner can pass
- **Interested**: Its former owner, a denizen of the ruin

> [!tip] Interaction table 
> 
> ```dataview
> TABLE without ID link(file.link, name) as Entity, file.folder as Type, file.outlinks as "Further interactions"
> FROM outgoing([[]]) 
> SORT Type ASC
> WHERE contains(file.folder, "arrival/")
> ```

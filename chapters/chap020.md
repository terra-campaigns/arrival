---
name: Waking up
game_date: 3909.3B1
pcs: Dolman, Guilf, Amyria
rank: 2.4
xp: "4680" 

meta:
  category: chapter
  campaign: Arrival
  world: Latter Earth
  realm: Maqqatba
  region: Linhe
  location: Holzander Castle
tags: 
---
# Chapter 20 Waking up

> [!todo]- Planning checklist
> - [x] Abridge previous chapter and distribute XP
> - [x] Commit next chapter draft and check metadata
> - [x] Clean up previous chapter files, update tags and name, make final commit
> - [x] Update (battle)maps, if applicable
> - [x] Define at least one consequence in the world of the actions of the PCs on the previous session, record it in the faction game or notion file
> - [x] Think about characters, write motivations & hooks
> - [x] Define Gain and Loss **clocks**
> - [x] Evaluate new game date
> - [x] Review Abridged
> - [x] Evaluate Faction turn
> - [x] Review and organise Notions
> - [x] Define XP
> - [x] Detail strong start
> - [x] Prepare Owlbear, if applicable
> - [x] Outline potential scenes, drafting locations, NPCs and encounters as needed. Define alternatives to combat for all scenes.
> - [x] Review and order/highlight information pool.
> - [x] Define treasure
> - [x] Update random encounter tables
> - [x] Evaluate heat
> - [x] Update graph view
> - [ ] Print information pool

> [!abstract] Characters' motivations
> - **[Dolman](../pcs/Dolman.md)**: Destroy the 2 devices left in the castle, save Galiera, kill Gellert & Imortra
> - **[Guilf](../pcs/Guilf.md)**: Kill? Mr. Void and save the world (by destroying the 2 devices left in the castle)
> - **[Amyria](../pcs/Amyria.md)**: Protect little Guilf, take the Angel Hound to Mystra's temple, destroy the 2 devices left in the castle and kill Gellert

> [!warning] Intro
> - 3 rings of creation: godbound words.

> [!danger] Strong start

PCs start feeling the **spirits are living in their bodies**, you dream constantly about it in **comforting** dreams. The spirits seems to tell you that it is time to **conclude the ritual** and they are **ready for it**.

- Amyria is Thalia, she looks **thinner** than normal, **tired**
- Dolman is Kimbarak, he is an **older** dwarf now, looking dirty and **depraved**. His hands obey him less and less.
- Guilf is Mr Void, he is an **adult** now

**The 3 [GodboundRings](../objects/GodboundRings.md) are done with runes of these 3 sprits.**
- **Golden Ring**, with *rune* of a Dwarven Dagger from Kimbarak
- **Silver Ring**, with rune of a Giant Hound-God for Thalia
- **Black Ring**, empty and void

> [!example] Potential scenes

**[Imortra](../npcs/Imortra.md)'s people**: [Gaelira](../npcs/Gaelira.md)'s destiny is now intertwined with the ritual, as agreed.

**The Ngar'tho will not attack the PCs**: "We are glad you have all agreed and have started the ritual. When is time, come to the chamber of Makab."
- But they have Galliera as a hostage, if the PCs do not complete their end of the contract for the ritual.
- Thalia will never leave the castle, unless Mr Void is summoned.
- Whatever the PCs do is considered part of the ritual by the hive mind of the [ngar-tho](../statblocks/ngar-tho.md)
- [Deja-vu rooms](chap019.md#Deja-vu%20rooms)

[banditCamp](../locations/banditCamp.md)

[Cagoth-Ze](../npcs/Cagoth-Ze.md) was killed by the [ngar-tho](../statblocks/ngar-tho.md)

[Gellert](../npcs/Gellert.md) is killed by the PCs. They get the [BookOfKnowledge](../objects/BookOfKnowledge.md)

> [!bug] Situation clocks

- **GAIN 6**: Treasures
- **LOSS 4**: River encounter in [holzanderCastleL5](../locations/holzanderCastleL5.md) 

> [!info]- Information pool
> ![Information pool](arrival/_informationPool.md)

> [!tip] Interaction table 
> 
> ```dataview
> TABLE without ID link(file.link, name) as Entity, file.folder as Type, file.outlinks as "Further interactions"
> FROM outgoing([[]]) 
> SORT Type ASC
> WHERE contains(file.folder, "arrival/")
> ```

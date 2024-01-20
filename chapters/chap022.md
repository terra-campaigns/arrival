---
name: Mystra's Temple
game_date: 3909.3D3
pcs: Dolman, Guilf, Amyria
rank: 27
xp: 5800 

meta:
  category: chapter
  campaign: Arrival
  world: Latter Earth
  realm: Maqqatba
  region: Linhe
  location: Mystra Temple, Khathadzig
tags: 
---

> [!todo]- Planning checklist
> - [x] Abridge previous chapter and distribute XP
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
> 	- [x] Prepare random encounters table
> - [x] Prepare Owlbear, if applicable
> - [x] Review and order/highlight information pool.
> - [x] Define treasure
> - [x] Update graph view
> - [ ] Print information pool

> [!abstract] Characters' motivations
> - **[Dolman](../pcs/Dolman.md)**: Wake up Gaelira, figure out which side on the war is fighting for Humanity.
> - **[Guilf](../pcs/Guilf.md)**: Exterminate the Ngar'tho and become a god
> - **[Amyria](../pcs/Amyria.md)**: Learn from the book of knowledge. Destroy the 2 devices left in the castle. Wake up Gaelira, figure out which side on the war is fighting for Humanity.

> [!warning] Intro
> You are travelling with:

```encounter
creatures:
  - Thirteen
  - Mustroc Heavymace
  - [l1b0w-2w3, Toff Fastreader]
```

> [!danger] Strong start

Travel to [templeMystra](../locations/templeMystra.md) (3 days) and then to [khathadzig](../locations/khathadzig.md) (5 days)

**Underground travel**: Mixed ruins, run a [godbound ruin gen](https://perchance.org/godbound-ruins) if encounter happens

**Random encounters**
- West of Mystra's temple: Anaks ([mob_elite_small](../../_gm/statblocks/mob_elite_small.md)) and/or Constructs ([mob_special_small](../../_gm/statblocks/mob_special_small.md))

> [!example] Situations

**Parley with Prompt**
- **Prompt** and his [turnskull](../factions/turnskull.md) ice constructs unit find themselves in the desert after a tremor.
- The Glasrath Champions speak with them and learn that Prompt has lived for millions of years.
- Prompt has battled outsiders and was one of heavens invaders.
- The Turnskull follow Loquiroth

![|400](https://i.imgur.com/HwUqtc9.png)

![|400](https://i.imgur.com/S4VBMMG.png)

**Enter the temple**
- The [BookOfKnowledge](../objects/BookOfKnowledge.md) cannot enter [templeMystra](../locations/templeMystra.md)
- Inside the temple a hundred humans live in famine
- When the Champions entered, a stampede was caused - the survivors in panic
- > Dolman: "Just eat the butt"
- The priests lost trust in [amyria](../pcs/amyria.md)

![|400](https://i.imgur.com/fofoMct.png)

**The nightmare [Balhannoth**](../../_gm/statblocks/Balhannoth.md)
- The [BookOfKnowledge](../objects/BookOfKnowledge.md) is lost to the ruined desert, but found by Amyria in a deep underground corridor
- Dolman and Guilf are tricked by a Nightmare, who showed itself as a gargantuan brown dragon. Dolman asked the dragon to cure [Gaelira](../npcs/Gaelira.md)
- Amyria sees the creature for what it is
- The nightmare takes [Gaelira](../npcs/Gaelira.md) with it

![|400](https://i.imgur.com/5OqQX4F.png)

**Dolman speaks to the Celestial shard**
- The shard was part of celestial engines, which were destroyed by human invasion of the heavens
- Celestial engines run control on Terra
- The destruction of heaven caused havoc on Terra, but powerful Sorcerers quicky learned how to use the celestial shards to build Terra Engines, which maintained the human reality. Called the Legacy.

![|400](https://i.imgur.com/qgmi68N.png)

**Meeting dwarves**
- For the second time, a group of dwarfs is travelling, fleeing [khathadzig](../locations/khathadzig.md) and going to [durnum](../locations/durnum.md)

**Amyria speaks with Mystra**
- Mystra is still unaware of her role in the war and has no clear alliance.

![|400](https://i.imgur.com/nihlKT4.png)

**Meeting Ghuse**
- Ghuse welcomes the Champions

![](https://i.imgur.com/8cZ7CSJ.png)


**Encounter generator table**

| id| rank|effect                                                  | reaction| prep| size|
|--:|----:|:-------------------------------------------------------|--------:|----:|----:|
|  1|    7|A tremor shakes the ground                              |        1|    6|    8|
|  2|    9|Something isn't where it's supposed to be               |        9|    9|    7|
|  3|    5|offended or insulted by something                       |        6|    7|    4|
|  4|    2|Chanting music echoes                                   |        7|    9|    7|
|  5|    7|It's connected to elsewhere by a curdled angle of space |        5|    7|    9|
|  6|    9|Poisonous flora force saves or debilitation             |        6|    5|    8|
|  7|    7|There's a foul smell in the air                         |        9|    5|    1|
|  8|    2|in need of healing or help with a situation             |        8|    9|    5|
|  9|    9|A horse or pack animal goes lame                        |        6|    2|    2|

> [!info]- Information pool
> ![Information pool](arrival/_informationPool.md)

> [!check] Treasure


> [!tip] Interaction table 
> 
> ```dataview
> TABLE without ID link(file.link, name) as Entity, file.folder as Type, file.outlinks as "Further interactions"
> FROM outgoing([[]]) 
> SORT Type ASC
> WHERE contains(file.folder, "arrival/")
> ```

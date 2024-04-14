---
name: The Drakvarden
game_date: 3909.9A3
pcs: "[Dolman](../pcs/dolman.md), [Amyria](../pcs/amyria.md), [Guilf](../pcs/guilf.md)"
rank: 30
xp: 6420

meta:
  category: chapter
  campaign: Arrival
  world: Latter Earth
  realm: Maqqatba
  region: Linhe
  location: "[templeMystra](../locations/templeMystra.md)"
tags: 
---

> [!todo]- Planning checklist
> - [x] Abridge previous chapter and distribute XP
> - [x] Commit next chapter draft and check metadata
> - [x] Clean up previous chapter files, update tags and name, make final commit
> - [x] Update (battle)maps, if applicable
> - [x] Update oracle
> - [x] Draw two tarot cards to inform prep
> - [x] Define at least one consequence in the world of the actions of the PCs on the previous session, record it in notion file
> - [x] Think about characters, write motivations & hooks
> - [x] Evaluate new game date
> - [x] Review Abridged
> - [x] Evaluate Faction turn
> - [x] Review and organise Notions
> - [x] Define XP
> - [x] Detail strong start
> - [x] Outline situations:
> 	- [x] Draft locations 
> 	- [x] Draft NPC
> 	- [x] Prepare Owlbear, if applicable
> - [x] Review and order/highlight information pool.
> - [x] Define treasure
> - [x] Update random encounter tables
> - [ ] Print information pool
> 
>> [!done]- Tracker 
>> ```dataview
>> table without ID link(file.link, name) AS "Name", game_date AS "Date", pcs AS "PCs", rank as "Rank", xp as "XP", meta.world as "World", meta.realm as "Realm", meta.region as "Region", meta.location as "Location"
>> from "arrival/chapters"
>> sort file.name asc
>> ```

> [!abstract] Characters' motivations
> - **[Dolman](../pcs/Dolman.md)**: The Ngar'tho, Mr. Void and the Angels. Kill them all! At any cost!
> - **[Guilf](../pcs/Guilf.md)**: Exterminate the Ngar'tho. Work with Ghuse if necessary.
> - **[Amyria](../pcs/Amyria.md)**: Bring peace to this world, but not with war.

> [!quote] Factions 
> ```dataview
> table without ID link(file.link, name) AS "Faction", stats[0].cunning + stats[1].force + stats[2].wealth as "Level", stats[0].cunning as "C", stats[1].force as "F", stats[2].wealth as "W"
> from "arrival/factions"
> WHERE contains(meta.category, "faction")=true
> sort id asc
> ```
> ![|400](https://i.imgur.com/bmXMM0W.png)
> 
> **Turn: wealth**: Mercians: 3, Acrisae: 4, FFKA East: 2
> **Turn: cunning**: Turnskull: 4, Mercians: 4, Acrisae: 4
> **Turn: wealth**: FFKA East: 1, Acrisae: 4, Mercians: 2, Turnskull: 2
> **Turn: wealth**: Mercians: 1, Turnskull: 4, Acrisae: 3
> **Then** impact of PCs action, reduce 2 wealth for Glasrath, and 2 force for Acrisae
> 
> - FFKA East continues to receive support from their main chapter and the Katho empire, and that is strengthening the partnership with the Acrisae. FFKA East is also using Sand Warriors when necessary.
> - Some Acrisae equipment is starting to fail, but they have not yet realised those are introduced weaknesses by [Bravhar](../npcs/Bravhar.md)
> - The guerrilla/chase of isolated Angels and Sand Warriors continues by Anaks and Lady Scurvy - who are not operating in an alliance, but are taking advantage of the situation.

> [!warning] Intro
> -xx
> 
> **Tarot cards**: 
> 	**Togarini**: This card represents the Death Angel Togarini and the Principle of Compulsion. Togarini’s influence increases the manic creativity that distorts reality, tearing beauty asunder. Insane artwork opens portals to Inferno, magicians experiment at the border of life and death, and death itself acts erratically – souls binding themselves into rotting corpses, or haunting the living as distorted spectres. The Death Angel’s influence is strongest among artists, magicians, body modifiers, and the senses and imagination enchanted by the dark and grotesque. The card shows a connection or opposition to the Death Angel and/or its Principle. The bond might be in the present, the past, or something that is about to happen.
> 	**Madness**: Psychosis. Severe depression. Schizophrenia. PTSD. Anxiety. Panic Attacks. Neurosis. Paranoia. Aggressive behavior. Multiple personalities. Mob mentality. Mass delusion.


> [!danger] Strong start

- Mystra opened a door to [templeMystra](../locations/templeMystra.md).
- How is the famine situation? 1:2 they perished, 3:4 they are still struggling, most of the clerics are against receiving support from the undead, 5:6 the hard rule clerics were pushed away, there was some social unrest, and the new leadership is ok with the support from the undead.

> [!example] Situations

**Mystra opened a door to [templeMystra](../locations/templeMystra.md)**
- New cleric lead the temple: Nimro
- [Gaelira](../npcs/Gaelira.md) will be treated by the clerics of Mystra
- Scouts relate that a force of 12 tents of FFKA is coming in the temple's direction (100 knights)
- The champions prepare a dozen of people in the temple who can potentially fight in a battle, if necessary.

**5 FFKA tents arrive, lead by Sir [ElricVaelor](../npcs/ElricVaelor.md)**
- The other 8 tents are not seen.
- The champions meet with Sir Elric, and learn that the FFKA has partnered with the Angels. Then Angels are led by Golab.
- Sir Elric is here to investigate how this temple has survived the battles in the region, and wants access. The champions are not giving them passage, and a battle is expected on the next morning.
- As they leave the meeting location, the champions hear a loud grunt of suffering from within the camp.

![](https://i.imgur.com/jQ307if.png)

**The Gate**
- In general, the clerics in the temple are bullish that the protective barrier will continue to protect them. They do make some arrangements to protect the ones who can not fight, and devise a escape route.
- In the next morning, as the FFKA advances, a dark-painted and gold-adorned dwarf comes in front, pulling chains and ropes.
- This dwarf painfully transmutes into a black dragon just in front of the protection barrier, and with its hands it is able to break the barrier.
- A fight starts between the Champions and their fighters against the sole dragon. The FFKA still waits where they were. The chains continue to be laid between the dragon and the FFKA, in catenary while the dragon flies.
- The dragon quickly kill all the fighters in the temple, while Guilf is tossed by Dolman with a Congealed Paradox. He crushes the stone, and the dragon's gold adorns and chains immediately fall and break.
- For a split second, it seemed that the dragon would stop his carnage, but it does not.

![](https://i.imgur.com/dQyoQM4.png)


**The Retreat**
- The champions guide the survivors, with the help of [Thirteen](../npcs/Thirteen.md) to walk the ruined tunnels towards Glasrath.
- With Dolma's ring, they go through earth and investigate where the chains connected to, and it seems to be some kind of catapult basket.
- The champions meet the survivors again en route to Glasrath and they continue.

> [!info] Information pool
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

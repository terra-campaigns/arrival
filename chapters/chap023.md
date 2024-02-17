---
name: Ghuse
game_date: 3909.3F7
pcs: "[Dolman](../pcs/dolman.md), [Amyria](../pcs/amyria.md), [Guilf](../pcs/guilf.md)"
rank: 27
xp: 5920 

meta:
  category: chapter
  campaign: Arrival
  world: Latter Earth
  realm: Maqqatba
  region: Linhe
  location: "[Khathadzig](../locations/khathadzig.md)"
tags: 
---

> [!todo]- Planning checklist
> - [x] Abridge previous chapter and distribute XP
> - [x] Commit next chapter draft and check metadata
> - [x] Clean up previous chapter files, update tags and name, make final commit
> - [x] Update (battle)maps, if applicable
> - [x] Define at least one consequence in the world of the actions of the PCs on the previous session, record it in notion file
> - [x] Think about characters, write motivations & hooks
> - [x] Evaluate new game date
> - [x] Review Abridged
> - [x] Evaluate Faction turn
> - [x] Review and organise Notions
> - [x] Define XP
> - [x] Detail strong start
> - [x] Outline situations:
> 	- [ ] Draft locations 
> 	- [ ] Draft NPCs
> 	- [ ] Prepare random encounters table
> 	- [ ] Prepare Owlbear, if applicable
> - [x] Review and order/highlight information pool.
> - [x] Define treasure
> - [x] Update graph view
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
> - **[Dolman](../pcs/Dolman.md)**: Find (again) and wake up Gaelira, figure out which side on the war is fighting for Humanity.
> - **[Guilf](../pcs/Guilf.md)**: Exterminate the Ngar'tho and become a god, work with Ghuse if necessary.
> - **[Amyria](../pcs/Amyria.md)**: Learn from the book of knowledge. Destroy the 2 devices left in the castle. Wake up Gaelira, figure out which side on the war is fighting for Humanity. Do not form an army of undead.

> [!quote]- Factions 
> ```dataview
> table without ID link(file.link, name) AS "Faction", stats[0].cunning + stats[1].force + stats[2].wealth as "Level", meta.die as "Die", stats[0].cunning as "C (1|2)", stats[1].force as "F (3|4)", stats[2].wealth as "W (5|6)"
> from "arrival/factions"
> WHERE contains(meta.category, "faction")=true
> sort id asc
> ```
> ![|400](https://i.imgur.com/bmXMM0W.png)
> 
> **Cunning round**
>  
> - Supraxae lands in [khathadzig](../locations/khathadzig.md) and ambushed Glasrath traders report that the FFKA has taken the shipment of the left leg of the Mercian Made God.

> [!warning] Intro
> - Did you sort the supply line to Mystra's temple?

> [!example] Situations

**Parlay with Ghuse ([aivridyt](../npcs/aivridyt.md))**
- Ghuse explains that he has killed the champions' friends: Miraak, Kethra, Gulthas and Weldon. And they work as mindless machines in his industry.
- Ghuse appreciates the champions changed. More mature, less dreaming of fairy tales.
- Guilf suggest that Ghuse revises his strategy and the support he is given to the Angels, if he is to continue seeing cycles of Life and Death on Earth.
- Guilf also approximates himself to [whursock](../npcs/whursock.md), who becomes very loyal to the bard. Whursock reinforces the opinion that Ghuse might want to abandon the contract with the Angels.

![|400](https://i.imgur.com/exwvDQ9.png)

**Parlay with [Fuko](../npcs/Fuko.md)**
- Fuko is the Trade Minister of Ghuse, operating from the [intermine](../locations/intermine.md)
- She knows when and when every piece of manufacture is or must be
- She administer the entire weapons trade for [glasrath](../factions/glasrath.md)

![|400](https://i.imgur.com/V9mqrQF.png)

**Visiting [khathadzig](../locations/khathadzig.md)**
- Where people who lives, live. Schools, churches, etc. Peaceful and mostly unbeknownst of the mining business that enriches the city. 
- Amyria's father has his office here, as Minister of Internal Affairs. Amyria's mother owns a small hotel.
- Population see the PCs as cursed. Hardly any magic is practiced in Glasrath now. They are a "peaceful" arms dealers, ignorant to the outside on the last decades.

**Dinner with Amyria's parents**
- The dinner turned out to be conflictuous
- Amyria's father was impolite with her mother, and Amyria picked up something in the air: they were hiding some history.
- After confronting both in different moments during the dinner, Amyria learns she was "sold" to Ghuse during the trade agreement decades ago.
- Amyria's father mentions that the people in the city thinks the champions are cursed because of their rings. The group notice the rings are creating some dark and hard carapace on their fingers. Dolman, bravely, takes out his ring, bleeding the entire table.

**Reading the book of Knowledge**
- Amyria continues to read the book of knowledge.
- She learns that the Heaves, when destroyed, became a set of collapsed pocket dimensions, with uncreation between them - impossible to navigate.
- She also learns that the celestial engines were used to keep these pocket dimensions as one single "heaven"
- Amyria starts to hallucinating looking at the book, and sees again the Nightmare ([Balhannoth](../npcs/Balhannoth.md)) that took [Gaelira](../npcs/Gaelira.md) - it just observes Amyria.

**Ambushed delivery**
- A group of 7 dwarves were delivering the left leg of the Mercian Made God, but were ambushed by FFKA.
- The leg was destroyed, and the dwarves were harassed: "You fucking dwarves and elves". 
- The group carried a "wanted" poster, with a dark image of the Glasrath champions carrying Gaelira

![|400](https://i.imgur.com/Axsw6qj.png)



> [!bug] Random encounters

| id|prompt                    |
|--:|:-------------------------|
|  1|`encounter: 4 l8h3e2w3`   |
|  2|`encounter: 6 l5h1e2w2`   |
|  3|`encounter: 7 l4h2e1w1`   |
|  4|`encounter: 1 l25h8e10w7` |
|  5|`encounter: 1 l20h5e5w10` |
|  6|`encounter: 3 l4h0e1w3`   |

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

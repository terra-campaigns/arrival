---
name: The Night Road
game_date: 3909.4D7
pcs: "[Dolman](../pcs/dolman.md), [Amyria](../pcs/amyria.md), [Guilf](../pcs/guilf.md)"
rank: 30
xp: 6300

meta:
  category: chapter
  campaign: Arrival
  world: Latter Earth
  realm: Maqqatba
  region: Linhe
  location: "Glasrath and The Forge"
tags: 
---

> [!todo]- Planning checklist
> - [x] Abridge previous chapter and distribute XP
> - [x] Commit next chapter draft and check metadata
> - [x] Clean up previous chapter files, update tags and name, make final commit
> - [x] Update (battle)maps, if applicable
> - [ ] Update oracle
> - [ ] Draw two tarot cards to inform prep
> - [ ] Define at least one consequence in the world of the actions of the PCs on the previous session, record it in notion file
> - [ ] Think about characters, write motivations & hooks
> - [ ] Evaluate new game date
> - [ ] Review Abridged
> - [ ] Evaluate Faction turn
> - [ ] Review and organise Notions
> - [ ] Define XP
> - [ ] Detail strong start
> - [ ] Outline situations:
> 	- [ ] Draft locations 
> 	- [ ] Draft NPCs
> 	- [ ] Prepare random encounters table
> 	- [ ] Prepare Owlbear, if applicable
> - [ ] Review and order/highlight information pool.
> - [ ] Define treasure
> - [ ] Update random encounter tables
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
> - **[Guilf](../pcs/Guilf.md)**: Exterminate the Ngar'tho. Work with Ghuse if necessary.
> - **[Amyria](../pcs/Amyria.md)**: Learn from the book of knowledge. Destroy the 2 devices left in the castle. Wake up Gaelira, figure out which side on the war is fighting for Humanity. Do not form an army of undead. Find a new home for the Angels.

> [!quote] Factions 
> ```dataview
> table without ID link(file.link, name) AS "Faction", stats[0].cunning + stats[1].force + stats[2].wealth as "Level", stats[0].cunning as "C", stats[1].force as "F", stats[2].wealth as "W"
> from "arrival/factions"
> WHERE contains(meta.category, "faction")=true
> sort id asc
> ```
> ![|400](https://i.imgur.com/bmXMM0W.png)
> 
> **Turn: force**
> - Acrisae: 1, Mercians: 5, Turnskull: 9
> 	- A force of Lady Scurvy is set loose to prey on a dispatch of Angels. As the Mercians who set them loose come back, they meet a force or Anaks. The Anaks are told of the Lady Scurvy and use the opportunity to cause further losses to the Angels. The Angels loose most of their Sand Warriors and a few Angels. A Supraxae is captured by the Anaks (but they don't know how to pilot it).
> - Glasrath Alliance: 2, FFKA East: 4

> [!warning] Intro
> -xx
> 
> **Tarot cards**: 


> [!example] Situations

**Removing Rings**
- The Glasrath Champions visit the factory levels of the Forge.
- They meet the dwarf forge master and Dolman decides to remove his ring for the second time. This time Dolman looses his entire finger - stuck into the ring.
- They decide to camp close to the Anaks, and Amyria uses a ritual to remove the curse of the ring attached to her finger. She is able to remove the ring without hurting herself.

**The Night Road**
- As the Champions travel to the location of the fallen Supraxae, Amyria reads the Book of Knowledge. She learns that destroyed realities might be recoverable if they haven't crossed a destruction threshold.
- Amyria also knows that realities that are not recoverable can still have its broken pocket dimensions connected to each other, with what is called Night Roads. No further explanation on what these Roads are was found at that moment.
- During one of the nights, [Thirteen](../npcs/Thirteen.md) talks through another dream, where he seems to be playing with the words Forgetfulness and Forgiveness.
- On this same night, during Amyria's watch, she sees a dark corridor where there was only a wall before.
- Dolman and Guilf initially do not see the corridor, but eventually was able to also see it.
- The group decides to walk into the dark corridor, which seems to be a dark bridge across a chasm of nothing. As they walk in, for about a day, they start to become anxious that it is not leading anywhere. As they move back, they walk back further than they thought they walked forward. They feel lost.
- Guilf screams, calling the Ngar'tho to show themselves. As he does it a storm of screams engulfs the party, filled with the anguished screams of those who died here. Navigating for hours through the storm tests the party's endurance and sanity.
- On a next attempt, Guilf decides to drink the tea, they still had with them, which previously showed them truth in Holzander's Castle. As he does it, he starts seen Mr. Void again, and in a heated conversation with his patron god, he untangles himself from Mr. Void - throwing his dark mask in the chasm's void.
- The party has been in the bridge for weeks now, their resolve is tested. Their sanity on knife edge.
- As they slowly continue they meet a man, a nightmare man, from Thirteen's dreams, [Balhannoth](../npcs/Balhannoth.md).
- The nightmare man explain they are lost in a Night Road now. Thirteen runs for the man, who has promised him forgetfulness and forgiveness in his dreams. Dolman holds Thirteen, but suddenly sees [Gaelira](../npcs/Gaelira.md) lying on the floor, close to his feet. Dolman immediately let go of Thirteen, who now runs for Balhannoth.
- Guilf, still wearing his ring, shouts a command to Thirteen "Stop!". Thirteen falls unconscious on the floor.
- It is unclear how it starts, but the Champions find themselves engulfed in a fight with Balhannoth and his tentacles. In a fast series of blows Balhannoth is destroyed.

**The end of a Nightmare**
- After Balhannoth is gone, the champions continue to walk through the night.
- Dolman puts the stone he inherited from his mother, on Gaelira's hands. A few minutes later she miraculously wakes up. In the next days she explains all that she has been through - the multiple tortures in Holzander's Castle, her lost Paragon Force and falling on the mind torment by Ngar'tho, Imortra and the Mercians.
- Amyria, praying for Mystra everynight, is listened to. It is Mystra who opens a door in the Night Road for the champions to get back to the ruins.


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

---
name: 
game_date: 3909.9A3
pcs: "[Dolman](../pcs/dolman.md), [Amyria](../pcs/amyria.md), [Guilf](../pcs/guilf.md)"
rank: 30
xp: 

meta:
  category: chapter
  campaign: Arrival
  world: Latter Earth
  realm: Maqqatba
  region: Linhe
  location: "Desert and ruins"
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

> [!danger] Strong start



> [!example] Situations

**The Confrontation with the Knowledge Nightmare**
- Upon finding the Book of Knowledge, the party confronts the Knowledge Nightmare once more. The creature attempts to lure them with promises of Gaelira's return and the fulfilment of their deepest desires, manipulating reality around it to disorient and weaken them.
- [Balhannoth](../npcs/Balhannoth.md) offers to give back Galiera and a definite way to bring her back for the soul of one of the 3 champions

**Thirteen starts to go insane because of [Balhannoth](../npcs/Balhannoth.md).** He cannot find his way correctly anymore while in this state. The PCs will have to navigate. Roll a d4:
1. **Manipulation through Memory**: With Thirteen's eidetic memory, the Knowledge Nightmare has a vast landscape to manipulate. It could alter Thirteen's memories, making them even more painful or creating false memories that drive Thirteen towards despair or into the Nightmare's control.
2. **Temptation of Forgetfulness**: As a way to escape the pain of their past, the Knowledge Nightmare might offer Thirteen the chance to forget their past choices entirely. However, this forgetfulness would come at a cost, perhaps in service to the Nightmare or losing a part of themselves in the process.
3. **A Path to True Redemption**: In a more twisted manipulation, the Nightmare could convince Thirteen that undertaking a specific, dangerous action could redeem their past. This path would likely serve the Nightmare's interests while putting Thirteen and the party in grave danger.

**Encounter Twilight Halls**: [twilightHallsAsylum](../locations/twilightHallsAsylum.md)
- Ancient research site, inhabited by scared human researchers
- They are led by [ViktraMordenheim](../npcs/ViktraMordenheim.md) from the Forge
- Roll Lamoria adventures (Ravenloft 142) if PCs are interested

> [!bug] Random encounters

**Random encounters creature options**
- [Azghouls](../statblocks/Azghouls.md)
- [angelic_guardian](../statblocks/angelic_guardian.md) and sand warriors ([mob_elite_small](../statblocks/mob_elite_small.md))
- Anaks ([mob_elite_small](../statblocks/mob_elite_small.md)) and/or Constructs ([mob_special_small](../statblocks/mob_special_small.md))
- Mercians chasing the PCs - [antinom](../statblocks/antinom.md) and [mob_elite_small](../statblocks/mob_elite_small.md)

1. **Sandstorm of Screams (Environment)**: A supernatural sandstorm engulfs the party, filled with the anguished screams of those who died in the desert. Navigating through the storm tests the party's endurance and sanity, with the risk of becoming disoriented or stumbling upon a hidden menace.
2. **Construct Sentinel (Construct)**: A damaged war construct, still following its last orders, challenges the party. This encounter could lead to combat, a chance to salvage technology, or even an ally if they manage to reprogram or repair the construct.
3. **Machina Ruins (Environment)**: Exploring a half-buried outpost reveals ancient war machines, some still operational. The party must navigate traps and defense mechanisms left active, offering opportunities to acquire powerful but potentially dangerous technology.
4. **Desert Marauders (Humans/Natural Beasts)**: A band of scavengers, riding war-beasts adapted to the desert, ambushes the party. These marauders are well-informed about the area and might possess items or knowledge crucial to navigating the desert and reaching The Forge.
5. **Oasis of Illusions (Environment/Magic)**: A seemingly lush oasis in the middle of the desert turns out to be an illusion cast by a desperate mage seeking to lure travelers. The mage, driven mad by isolation and the desert's harshness, might be a foe, a source of information, or in need of rescue.
6. **Desert Mirage (Environment/Personal Panic Event):** As the sun beats down, a seemingly real vision of an oasis lures the party, only to disappear upon approach, testing their resolve and sanity.
7. **The Weeping Plains (Environment/Natural Beasts):** A sudden, eerie rain transforms the plains into a mud-trap, where predatory plants await their next meal, hidden beneath the surface.
8. **Encounter at the Abandoned Shrine (Uncreated/Natural Beasts):** Investigating an ancient shrine, the party stumbles upon a congregation of uncreated beings worshipping alongside mutated wildlife, a rare moment of peace in a chaotic world.

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

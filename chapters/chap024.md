---
name: Knowledge Madness Calls?
game_date: 3909.4A7
pcs: "[Dolman](../pcs/dolman.md), [Amyria](../pcs/amyria.md), [Guilf](../pcs/guilf.md)"
rank: 29
xp: 6180

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
> 	- [ ] Draft locations 
> 	- [ ] Draft NPCs
> 	- [ ] Prepare random encounters table
> 	- [ ] Prepare Owlbear, if applicable
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
> **Tarot cards**: The Gate (_Gate represents a threshold or obstacle that must be crossed or be protected._) and Madness (_Madness that overwhelms and tears apart, but may also grant insight._)

> [!danger] Strong start

Start travel to [TheForge](../locations/TheForge.md).
- Navigating everyday is a d8 (takes in weather, difficulty of ruins and navigation).

> [!example] Situations

**The Confrontation with the Knowledge Nightmare**
- Upon finding the Book of Knowledge, the party confronts the Knowledge Nightmare once more. The creature attempts to lure them with promises of Gaelira's return and the fulfillment of their deepest desires, manipulating reality around it to disorient and weaken them.
- [Balhannoth](../npcs/Balhannoth.md) offers to give back Galiera and a definite way to bring her back for the soul of one of the 3 champions

**Thirteen starts to go insane because of [Balhannoth](../npcs/Balhannoth.md).** He cannot find his way correctly anymore while in this state. The PCs will have to navigate.
1. **Illusions of the Past**: The Knowledge Nightmare could create vivid illusions of key moments where Thirteen made regrettable decisions, forcing them to relive these moments. These illusions might not just be reproductions but twisted versions that amplify Thirteen's guilt and self-doubt.
2. **Manipulation through Memory**: With Thirteen's eidetic memory, the Knowledge Nightmare has a vast landscape to manipulate. It could alter Thirteen's memories, making them even more painful or creating false memories that drive Thirteen towards despair or into the Nightmare's control.
3. **Temptation of Forgetfulness**: As a way to escape the pain of their past, the Knowledge Nightmare might offer Thirteen the chance to forget their past choices entirely. However, this forgetfulness would come at a cost, perhaps in service to the Nightmare or losing a part of themselves in the process.
4. **A Path to True Redemption**: In a more twisted manipulation, the Nightmare could convince Thirteen that undertaking a specific, dangerous action could redeem their past. This path would likely serve the Nightmare's interests while putting Thirteen and the party in grave danger.

**Encounter Twilight Halls**: [twilightHallsAsylum](../locations/twilightHallsAsylum.md)
- Ancient research site, inhabited by scared human researchers
- They are led by [ViktraMordenheim](../npcs/ViktraMordenheim.md) from the Forge
- Roll Lamoria adventures (Ravenloft 142) if PCs are interested

**Arriving at [TheForge](../locations/TheForge.md)**
- Surroundings (and their underground) are camps and villages of Anaks in war. Terrible place.
- Inner Forge is the technology city where the Anaks now live
- Kernel Forge is unknown to all
	- PCs will need to get a lot of support to be allowed to go to the Kernel Forge: could include some military task.
		- Retrieve the Supraxae found by Anaks and bring it here
		- Retrieve the Supraxae detector, found in [gimorkoc](../locations/gimorkoc.md)
		- Kill an Angel
		- Find a way to get the Mercians and their Made God to formally enter the war, allied with Turnskull

> [!bug] Random encounters

**Random encounters creature options**
- [Azghouls](../statblocks/Azghouls.md)
- [angelic_guardian](../statblocks/angelic_guardian.md) and sand warriors ([mob_elite_small](../statblocks/mob_elite_small.md))
- Anaks ([mob_elite_small](../statblocks/mob_elite_small.md)) and/or Constructs ([mob_special_small](../statblocks/mob_special_small.md))
- Mercians chasing the PCs - [antinom](../statblocks/antinom.md) and [mob_elite_small](../statblocks/mob_elite_small.md)

1. **Battlefield Ghosts (Environment/Uncreated)**: As night falls, the party encounters spirits of fallen soldiers reenacting their last moments. The haunting scene offers insight into the war's brutality but might also reveal hidden paths or valuable war relics left undiscovered.
2. **Sandstorm of Screams (Environment)**: A supernatural sandstorm engulfs the party, filled with the anguished screams of those who died in the desert. Navigating through the storm tests the party's endurance and sanity, with the risk of becoming disoriented or stumbling upon a hidden menace.
3. **Construct Sentinel (Construct)**: A damaged war construct, still following its last orders, challenges the party. This encounter could lead to combat, a chance to salvage technology, or even an ally if they manage to reprogram or repair the construct.
4. **Angel's Downfall (Angels)**: The party finds an injured angel, a survivor of a recent skirmish. The encounter could provide valuable intelligence about the enemy's movements, offer a chance to gain an angelic ally, or lead to a conflict if the angel mistakes the party for foes.
5. **Machina Ruins (Environment)**: Exploring a half-buried outpost reveals ancient war machines, some still operational. The party must navigate traps and defense mechanisms left active, offering opportunities to acquire powerful but potentially dangerous technology.
6. **Desert Marauders (Humans/Natural Beasts)**: A band of scavengers, riding war-beasts adapted to the desert, ambushes the party. These marauders are well-informed about the area and might possess items or knowledge crucial to navigating the desert and reaching The Forge.
7. **Oasis of Illusions (Environment/Magic)**: A seemingly lush oasis in the middle of the desert turns out to be an illusion cast by a desperate mage seeking to lure travelers. The mage, driven mad by isolation and the desert's harshness, might be a foe, a source of information, or in need of rescue.
8. **The Wandering Forge (Construct/Nightmare Creature)**: The party encounters a mobile forge, a construct that has gained sentience. It wanders the desert, crafting beings of metal and magic in a twisted imitation of life. The forge could be a tremendous asset, a formidable adversary, or a source of unique equipment if approached correctly.
9. **Desert Mirage (Environment/Personal Panic Event):** As the sun beats down, a seemingly real vision of an oasis lures the party, only to disappear upon approach, testing their resolve and sanity.
10. **The Weeping Plains (Environment/Natural Beasts):** A sudden, eerie rain transforms the plains into a mud-trap, where predatory plants await their next meal, hidden beneath the surface.
11. **Ghostly Convoy (Humans/Nightmare Creatures):** The party encounters a procession of spectral soldiers marching eternally, silently demanding tribute or secrets from the living as they pass through ancient battlefields.
12. **Encounter at the Abandoned Shrine (Uncreated/Natural Beasts):** Investigating an ancient shrine, the party stumbles upon a congregation of uncreated beings worshipping alongside mutated wildlife, a rare moment of peace in a chaotic world.

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

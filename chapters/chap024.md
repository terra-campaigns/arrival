---
name: The Forge
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

> [!example] Situations

**Meet Bravhar, the annealing dragon**
- [Bravhar](../npcs/Bravhar.md), the wyrmling golden dragon that perished in the Battle from the Ammouinoth three decades ago, is now ressurected.
- Bravhar has an agreement with Ghuse ([aivridyt](../npcs/aivridyt.md)) and will work as the annealing process for the mines for 145 year. This is the payback price to be brought back.
- Bravhar wants to spend time thinking on the process so that he can inject a systematic failure on each metal part at its molecular level. This can be Glasrath's backup plan in case they find themselves in war with their customers.
- Ghuse is convinced by [guilf](../pcs/guilf.md) to allow the dragon the required time.

**Ghostly convoy** 
- [dolman](../pcs/dolman.md) puts his ring again, and feels complete.
- The champions start travelling towards [TheForge](../locations/TheForge.md), using Dolman's earth ring, travelling through soil.
- On the end of the first week, during a resting period, [guilf](../pcs/guilf.md) sees a group of 4 smoke creatures take form from his pipe week smoke
- These ghostly nightmares explain they came from Earth, that was shattered and lost its smoke construction. As Earth broke, it started to be re-made in matter.
- The nightmares start to take shape of the champions.
- The conversation feel like a nightmare, and the convoy goes their way after a while.
- [Thirteen](../npcs/Thirteen.md), at the same time, wakes up from a nightmare where he sees his little sister die again.

**Hurt angel and sand warriors**
- A few days later, as the champions progress their journey, [amyria](../pcs/amyria.md) sees through stone an angel, inside a large ruined atrium, laying on the floor. The Angel seems hurt.
- In a neighbour atrium, a group of 20 sand warriors come to meet the angel - they seem allied. Sand warriors are Dust Elven mercenaries, not always welcomed amongst their own people.
- The Glasrath champions decide to go through the last wall that separates them from the angel and sand warriors.
- They are met with caution, and the angel speak with them. The angel in clearly hurt, limping.
- [amyria](../pcs/amyria.md) mentions she knows about the never ending war of angels and humanity, and that she learned this from the [BookOfKnowledge](../objects/BookOfKnowledge.md). After mentioning the book, the angel becomes interested.
- [dolman](../pcs/dolman.md) acts fast and pull all his companions through the rocks again. The angel is incredibly fast, and is almost able to reach to Amyria, but for a few centimetres it does not happen, and the champions find themselves safe inside the walls of the ruins.

![|500](https://i.imgur.com/gwrWnoz.png)

![](https://i.imgur.com/tHZYdHS.png)

**Arriving at [TheForge](../locations/TheForge.md)**
- Surroundings (and their underground) are camps and villages of Anaks and humans allied.
- The location terrible place, with a terrible smell.
- The champions are offered twice dead sandwich, which they learn is made of the bodies of undead they hunt in the ruins. More tasty, and also less frequent, is the once dead sandwich, made with the bodies of dead friends and enemies.
- An anak sergeant finds it wrong that the champions are so deep into the camp, without being part of their army. He suggest he will have to deal with the situation but [guilf](../pcs/guilf.md), using his command ring, convinces him to bring the champions to prompt.
- The Inner Forge is the technology city where the commanding Anaks live amongst constructs.
- Prompt explains that for the champions to be trusted and speak with [Loquiroth](../npcs/Loquiroth.md), they will need to complete one mission. They walk together to the mission backlog in a screen and see
	- Retrieve the Supraxae found by Anaks and bring it here
	- Retrieve the Supraxae detector, found in [gimorkoc](../locations/gimorkoc.md)
	- Kill an Angel
	- Find a way to get the Mercians and their Made God to formally enter the war, allied with Turnskull

![](https://i.imgur.com/4QOJA4N.png)

![](https://i.imgur.com/wl4Mzz5.png)

![|400](https://i.imgur.com/HwUqtc9.png)

The Glasrath champions decide to retrieve the Supraxae.

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

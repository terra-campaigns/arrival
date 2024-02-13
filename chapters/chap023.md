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

> [!todo] Planning checklist
> - [x] Abridge previous chapter and distribute XP
> - [x] Commit next chapter draft and check metadata
> - [x] Clean up previous chapter files, update tags and name, make final commit
> - [x] Update (battle)maps, if applicable
> - [x] Define at least one consequence in the world of the actions of the PCs on the previous session, record it in notion file
> - [x] Think about characters, write motivations & hooks
> - [x] Evaluate new game date
> - [x] Review Abridged
> - [ ] Evaluate Faction turn
> - [ ] Review and organise Notions
> - [x] Define XP
> - [x] Detail strong start
> - [ ] Outline situations:
> 	- [ ] Draft locations 
> 	- [ ] Draft NPCs
> 	- [ ] Prepare random encounters table
> 	- [ ] Prepare Owlbear, if applicable
> - [ ] Review and order/highlight information pool.
> - [ ] Define treasure
> - [ ] Update graph view
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
> - **[Guilf](../pcs/Guilf.md)**: Exterminate the Ngar'tho and become a god, work with Ghuse if necessary.
> - **[Amyria](../pcs/Amyria.md)**: Learn from the book of knowledge. Destroy the 2 devices left in the castle. Wake up Gaelira, figure out which side on the war is fighting for Humanity. Do not form an army of undead.

> [!quote] Factions 
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
> You are travelling with:

Thirteen 

> [!danger] Strong start

**Parlay with Ghuse ([aivridyt](../npcs/aivridyt.md))**
- I killed your friends: Miraak, Kethra, Gulthas and Weldon
	- And they work as mindless machines in my industry now.
- You are indeed changed. More mature, less dreaming of fairy tales. **This is good.**

> [!example] Situations

**Meeting people in the mountains**
- Ghuse's [Court](../locations/khathadzig.md#Court)
- [khathadzig](../locations/khathadzig.md): Where people who lives, live. Schools, churches, etc. Peaceful. [Ushulx](../npcs/Ushulx.md) stays there as a spy. [whursock](../npcs/whursock.md) leads the city.
	- Scholar in [khathadzig](../locations/khathadzig.md) knows Amyria book (nightmare effect?)
- [intermine](../locations/intermine.md): Where the industry is commanded from. Ghuse, [Fuko](../npcs/Fuko.md) and Amyria's father are here in offices. Exports from all fronts leave from here.
- [tfddMines](../locations/tfddMines.md): Where most of the mining and industry is done.
- Population see the PCs as cursed. Hardly any magic is practiced in Glasrath now. They are a peaceful arms dealers, ignorant to the outside on the last decades.
- Ghuse cannot be dissuaded by a Command miracle - there is a network of officials and clerks that reverts him back to his original goals. To do that will require Influence/Dominion (costs 4 - city, implausible; reduces to 2 if ).

Tension die ideas:
- Thirteen gets lost while travelling
- Their rings take over their hand

**Book of Knowledge, expected questions:**
- **How to wake up [Gaelira](../npcs/Gaelira.md)**: Not only a Dragon-King, but other Sorcerer-Kings from that age might also have the required psionic power. And there is one leading Turnskull. They are in the factory.
- **[ngar-tho](../statblocks/ngar-tho.md) physiology**: They require moist locations, weakened by dryness and sunlight.
- **Origin of the book**: Created with celestial shards (same as Dolman's stone and the three rings), which gives it creation power.
[BookOfKnowledge](../objects/BookOfKnowledge.md): One check each 24h studied.
- DC 25 for S+ you gain the knowledge you seek as you see true reality (night roads incoming)
- DC 15 for S- you gain the knowledge you seek but you either disturb the illusion or a nightmare senses you 
- F The knowledge collapses your sanity and a nightmare is summoned (sanity check)



**Encounter Twilight Halls**
[twilightHallsAsylum](../locations/twilightHallsAsylum.md)

**City Encounter**
[EmanuelWeiss](../npcs/EmanuelWeiss.md) has been here for some time, and a his Turnskull constructs (Mob Small 20 HD) are polluting their land with their maintenance, making life almost unliveable for the locals. They're secretly smuggling in a Thing to help them survive, but [Eleni](../npcs/Eleni.md) discovers that their plan is being leaked by a traitor, and if help isn't found soon, the Antagonist will have both the Thing and the ringleaders of the resistance.
- **Antagonists**: Turnkskull officer [EmanuelWeiss](../npcs/EmanuelWeiss.md)
- **Friends**: Merchant whose trade routes have been cut by war [Eleni](../npcs/Eleni.md)
- **Places**: Military camp with soldiers and camp followers
- **Complications**: The army is bringing a great sickness or plague
- **Things**: Secret detector for [acrisae](../factions/acrisae.md) manoeuvres. The detector was built in [twilightHallsAsylum](../locations/twilightHallsAsylum.md)
- **Why important**: It's the only good approach to a soft target in the rear
- **Tension**: Pollution builds up, Emmanuel gets sick

**Encounter with sapient that relates that a flood that drowned out a community**
- ***Seed:*** **Mayor or [linhe_city](../locations/linhe_city.md), incompetent ruler who thinks only of their own safety** is working to seize **the Rainmaker's Curse** left behind by its now-dead collectors from the **Bastion tower, now left in ruins by the calamity** where it was left, but the **[ffkaEast](../factions/ffkaEast.md) leaders were somehow blamed for the disaster's intensity** and their allies are preventing them from getting through. Unfortunately, the strain of holding back the Antagonist **Incompetent ruler who thinks only of their own safety** them unable to get the **the Rainmaker's Curse** themselves, and the **Incompetent ruler who thinks only of their own safety** may soon overwhelm them.

**Random encounters**
- East of Mystra's temple, underground: [Azghouls](../statblocks/Azghouls.md)
- East of Mystra's temple, desert: [angelic_guardian](../statblocks/angelic_guardian.md) and sand warriors ([mob_elite_small](../statblocks/mob_elite_small.md))
- West of Mystra's temple: Anaks ([mob_elite_small](../statblocks/mob_elite_small.md)) and/or Constructs ([mob_special_small](../statblocks/mob_special_small.md))
- Anywhere: Mercians chasing the PCs - [antinom](../statblocks/antinom.md) and [mob_elite_small](../statblocks/mob_elite_small.md)
**Encounter generator table**


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

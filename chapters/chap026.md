---
name: 
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
  location: "Desert and ruins"
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
> - [ ] Review and order/highlight information pool.
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

**Encounter Twilight Halls**: [twilightHallsAsylum](../locations/twilightHallsAsylum.md)
- Ancient research site, inhabited by scared human researchers
- They are led by [ViktraMordenheim](../npcs/ViktraMordenheim.md) from the Forge
- Roll Lamoria adventures (Ravenloft 142) if PCs are interested

**Anaks securing the Supraxae - terrified**
- Background: A force of Lady Scurvy is set loose to prey on a dispatch of Angels. As the Mercians who set them loose come back, they meet a force or Anaks. The Anaks are told of the Lady Scurvy and use the opportunity to cause further losses to the Angels. The Angels loose most of their Sand Warriors and a few Angels. A Supraxae is captured by the Anaks (but they don't know how to pilot it).
- Leader: [ZathirRuhk](../npcs/ZathirRuhk.md)

**5 FFKA tents arrive at the Supraxae Site**
- "*Well well well, we are lucky to find two rabbits in one single place*"
	- Mercian Antinomi have influenced the FFKA to come for the Supraxae, expecting an ambush of Anaks
- Leader: Sir [ElricVaelor](../npcs/ElricVaelor.md)
- Background:
	- **Ongoing War and Alliance Dynamics**: Katho's war with the D'elsinese Empire continues, straining its military and alliances with neighboring lands like Foucheresia and Romburghia.
	- **Religious and Cultural Tensions in Linhe**: The rise of Faletism and the ongoing zombie invasions in Linhe could intersect with the champions' journey. They might need to assist or evade the Faletist Knights, deal with undead hordes, or exploit these distractions for safe passage.
	- **The Supraxae's Powers and Influence**: The supraxae itself, depending on its abilities and the reverence or fear it inspires, could affect the journey.
	- **The FFKA is sending some tents to recover/protect the Supraxae.**

```encounter
creatures:
  - 2:Mob Small 20 HD
```

**Supraxae’s Influence on Local Fauna and Flora**: 
- As the supraxae is transported, its celestial energies could unintentionally awaken or mutate the local wildlife or vegetation.
- This could result in bizarre encounters with enhanced creatures or altered landscapes that either hinder or help the champions' progress, depending on how they manage these changes.

**City Encounter**
[EmanuelWeiss](../npcs/EmanuelWeiss.md) has been here for some time, and a his Turnskull constructs (Mob Small 20 HD) are polluting their land with their maintenance, making life almost unliveable for the locals. They're secretly smuggling in a Thing to help them survive, but [Eleni](../npcs/Eleni.md) discovers that their plan is being leaked by a traitor, and if help isn't found soon, the Antagonist will have both the Thing and the ringleaders of the resistance.
- **Antagonists**: Turnkskull officer [EmanuelWeiss](../npcs/EmanuelWeiss.md)
- **Friends**: Merchant whose trade routes have been cut by war [Eleni](../npcs/Eleni.md)
- **Places**: Military camp with soldiers and camp followers
- **Complications**: The army is bringing a great sickness or plague
- **Things**: Secret detector for [acrisae](../factions/acrisae.md) manoeuvres. The detector was built in [twilightHallsAsylum](../locations/twilightHallsAsylum.md)
- **Why important**: It's the only good approach to a soft target in the rear
- **Tension**: Pollution builds up, Emmanuel gets sick

**Dolman's father is now in Glasrath**


> [!bug] Random encounters

**Random encounters creature options**
- [Azghouls](../statblocks/Azghouls.md)
- [angelic_guardian](../statblocks/angelic_guardian.md) and sand warriors ([mob_elite_small](../statblocks/mob_elite_small.md))
- Anaks ([mob_elite_small](../statblocks/mob_elite_small.md)) and/or Constructs ([mob_special_small](../statblocks/mob_special_small.md))
- Mercians chasing the PCs - [antinom](../statblocks/antinom.md) and [mob_elite_small](../statblocks/mob_elite_small.md)

1. **Construct Sentinel (Construct)**: A damaged war construct, still following its last orders, challenges the party. This encounter could lead to combat, a chance to salvage technology, or even an ally if they manage to reprogram or repair the construct.
2. **Machina Ruins (Environment)**: Exploring a half-buried outpost reveals ancient war machines, some still operational. The party must navigate traps and defense mechanisms left active, offering opportunities to acquire powerful but potentially dangerous technology.
3. **Desert Marauders (Humans/Natural Beasts)**: A band of scavengers, riding war-beasts adapted to the desert, ambushes the party. These marauders are well-informed about the area and might possess items or knowledge crucial to navigating the desert and reaching The Forge.
4. **Desert Mirage (Environment/Personal Panic Event):** As the sun beats down, a seemingly real vision of an oasis lures the party, only to disappear upon approach, testing their resolve and sanity.
5. **The Weeping Plains (Environment/Natural Beasts):** A sudden, eerie rain transforms the plains into a mud-trap, where predatory plants await their next meal, hidden beneath the surface.
6. **Encounter at the Abandoned Shrine (Uncreated/Natural Beasts):** Investigating an ancient shrine, the party stumbles upon a congregation of uncreated beings worshipping alongside mutated wildlife, a rare moment of peace in a chaotic world.

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

---
name: 
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
  location: ""
tags: 
---

> [!todo]- Planning checklist
> - [ ] Abridge previous chapter and distribute XP
> - [ ] Commit next chapter draft and check metadata
> - [ ] Clean up previous chapter files, update tags and name, make final commit
> - [ ] Update (battle)maps, if applicable
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

> [!quote]- Factions 
> ```dataview
> table without ID link(file.link, name) AS "Faction", stats[0].cunning + stats[1].force + stats[2].wealth as "Level", meta.die as "Die", stats[0].cunning as "C (1|2)", stats[1].force as "F (3|4)", stats[2].wealth as "W (5|6)"
> from "arrival/factions"
> WHERE contains(meta.category, "faction")=true
> sort id asc
> ```
> ![|400](https://i.imgur.com/bmXMM0W.png)
> 
> **No round**
> 


> [!warning] Intro
> - 
 
> [!danger] Strong start

...

> [!example] Situations

**Meeting people in the mountains**
- [khathadzig](../locations/khathadzig.md): . [Ushulx](../npcs/Ushulx.md) stays there as a spy. [whursock](../npcs/whursock.md) leads the city.
- Scholar in [khathadzig](../locations/khathadzig.md) knows Amyria book (nightmare effect?)
- [intermine](../locations/intermine.md): Where the industry is commanded from. Ghuse, [Fuko](../npcs/Fuko.md) and Amyria's father are here in offices. Exports from all fronts leave from here.
- [tfddMines](../locations/tfddMines.md): Where most of the mining and industry is done.

**Tension die ideas:**
- Thirteen gets lost while travelling

**Encounter Twilight Halls**
[twilightHallsAsylum](../locations/twilightHallsAsylum.md)

> [!bug] Random encounters

**Random encounters**
- East of Mystra's temple, underground: [Azghouls](../statblocks/Azghouls.md)
- East of Mystra's temple, desert: [angelic_guardian](../statblocks/angelic_guardian.md) and sand warriors ([mob_elite_small](../statblocks/mob_elite_small.md))
- West of Mystra's temple: Anaks ([mob_elite_small](../statblocks/mob_elite_small.md)) and/or Constructs ([mob_special_small](../statblocks/mob_special_small.md))
- Anywhere: Mercians chasing the PCs - [antinom](../statblocks/antinom.md) and [mob_elite_small](../statblocks/mob_elite_small.md)

**Other options**
1. **Desert Mirage (Environment/Personal Panic Event):** As the sun beats down, a seemingly real vision of an oasis lures the party, only to disappear upon approach, testing their resolve and sanity.
2. **The Weeping Plains (Environment/Natural Beasts):** A sudden, eerie rain transforms the plains into a mud-trap, where predatory plants await their next meal, hidden beneath the surface.
3. **Ghostly Convoy (Humans/Nightmare Creatures):** The party encounters a procession of spectral soldiers marching eternally, silently demanding tribute or secrets from the living as they pass through ancient battlefields.
4. **Encounter at the Abandoned Shrine (Uncreated/Natural Beasts):** Investigating an ancient shrine, the party stumbles upon a congregation of uncreated beings worshipping alongside mutated wildlife, a rare moment of peace in a chaotic world.
5. **Mountain's Fury (Environment/Weather Effects):** Climbing the snow-covered peaks, the party is caught in an avalanche, a terrifying reminder of nature's indifference and the mountain spirits' wrath.
6. **Forest of Whispers (Natural Beasts/Nightmare Creatures):** The trees themselves seem to watch as the party navigates a forest where the line between the natural and the supernatural blurs, and beasts of shadow stalk between the trunks.

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

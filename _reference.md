
> [!quote] Factions 
> 
> ```dataview
> table without ID link(file.link, name) AS "Faction", (h + e + r) as "M", h as "H", e as "E", r as "R"
> from "arrival/factions"
> WHERE contains(meta.category, "faction")=true
> sort id asc
> ```

**Encounter**: 1, 2, 2, 2, 1
**Turn**: E
- 1: Acrisae 0, Turnskull 14
- 2: FFKA 10, G 4, M 10




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

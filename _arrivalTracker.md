## Chapters

```dataview
table without ID link(file.link, name) AS "Name", part AS "Part", game_date AS "Date", season AS "Season", pcs AS "PCs", party_rank as "Party Rank", xp as "XP"
from "arrival"
WHERE contains(category, "chapter")=true AND campaign = "Arrival"
sort file.name asc
```


## NPCs

```dataview
table without ID link(file.link, name) AS "Name", type AS Species, cr AS CR, char_tags as "Tags", location as Location, faction as Faction
from "campaign"
WHERE category = "npc"
sort file.name asc
```


## Active villains (2-4)

- [Aivridyt](arrival/npcs/aivridyt.md)
- [Sergarus](arrival/npcs/Sergarus.md) built as a dark lord
- [Imortra](arrival/npcs/imortra.md) built as a dark lord

## Active factions (3-6)

- [Glasrath](arrival/factions/glasrath.md)
- [FFKA East](arrival/factions/ffkaEast.md)
- [Rurkinar](arrival/factions/rurkinar.md)
- [Mercians](arrival/factions/mercians.md)

## Locations on the regional map of Linhe

```dataview
table without ID link(file.link, name) AS "Name", hex as "Hex Code", sub as "Sub-location", type as "Type", rank as "Rank"
from "campaign"
WHERE category = "location" AND campaign = "Arrival" AND land = "Maqqatba" AND region = "Linhe"
sort type asc
```


## Guideline for difficulty rank per location type

| Land     | Region | Type                                              | Rank | CR Gauges   |
| -------- | ------ | ------------------------------------------------- | ---- | ----------- |
| Maqqatba | Linhe  | Roads                                             | 0    | 3, 2, 2, 2  |
| Maqqatba | Linhe  | Deep wastes (3+ hexes from roads and settlements) | 1    | 6, 8, 9, 12 |
| Maqqatba | Linhe  | Ruins (1st level)                                 | 1    | 6, 8, 9, 12 |


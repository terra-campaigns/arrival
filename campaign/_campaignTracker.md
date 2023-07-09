## Chapters

```dataview
table without ID link(file.link, name) AS "Name", part AS "Part", game_date AS "Date", season AS "Season", location AS "Locations", pcs AS "PCs", party_level as "Party Level", dc_min as "DC Min", cr_gauges as "Location CR Gauges", xp as "XP"
from "campaign"
WHERE contains(category, "chapter")=true
sort file.name asc
```

## Active villains (2-4)

- [Aivridyt](../../npcs/aivridyt.md)
- [Sergarus](../../npcs/sergarus.md) built as a dark lord
- [Imortra](../../npcs/imortra.md) built as a dark lord

## Active factions (3-6)

- [Glasrath](../../factions/glasrath.md)
- [FFKA East](../../factions/ffkaEast.md)
- [Rurkinar](../../factions/rurkinar.md)
- [Mercians](../../factions/mercians.md)

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


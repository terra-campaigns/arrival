## Query on chapters

```dataview
table without ID link(file.link, name) AS "Name", part AS "Part", game_date AS "Date", season AS "Season", location AS "Locations", pcs AS "PCs", party_level as "Party Level", dc_min as "DC Min", cr_gauges as "CR Gauges", xp as "XP"
from "campaign"
WHERE contains(type, "chapter")=true
sort file.name asc
```

## Active vilains (2-4)

- [Aivridyt](../../npcs/aivridyt.md)
- [Sergarus](../../npcs/sergarus.md) built as a dark lord
- [Imortra](../../npcs/imortra.md) built as a dark lord

## Active factions (3-6)

- [Glasrath](../../factions/glasrath.md)
- [FFKA East](../../factions/ffkaEast.md)
- [Rurkinar](../../factions/rurkinar.md)
- [Mercians](../../factions/mercians.md)

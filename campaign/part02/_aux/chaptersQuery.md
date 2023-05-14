# Query on chapters

```dataview
table without ID link(file.link, name) AS "Name", part AS "Part", game_date AS "Date", season AS "Season", location AS "Locations", pcs AS "PCs", party_level as "Party Level", dc_min as "DC Min", cr_gauges as "CR Gauges", xp as "XP"
from "campaign"
WHERE contains(type, "chapter")=true
sort file.name asc
```

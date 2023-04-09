# Query on chapters

```dataview
table without ID link(file.link, name) AS "Name", part AS "Part", game_date AS "Date", season AS "Season", location AS "Locations", pcs AS "PCs", party_level as "Party Level", easy_dc as "Easy DC", deadly_cr as "Deadly CR", xp as "XP"
from "campaign"
WHERE contains(type, "chapter")=true
sort file.name asc
```

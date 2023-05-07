```dataview
table without ID link(file.link, name) AS "Name", species AS "Species", level AS "Level", ac AS "AC", initiative AS "INI", speed, skills.perception AS "PCPT", skills.investigation AS "IVST", skills.insight AS "IGHT", skills.persuasion AS "PSON", skills.stealth AS "SLTH", magic_items AS "Magic Items"
from "campaign"
WHERE type = "pc"
sort file.name asc
```

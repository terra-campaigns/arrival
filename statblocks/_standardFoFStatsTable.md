```dataview
table without ID link(file.link, name) AS "Name", cr AS "CR", ac AS "AC", hp AS "HP", hit_dice AS "HD",  traits.desc AS "Proef Ability", actions.desc AS "Damages"
from "statblocks"
WHERE statblock = true AND source = "Forge of Foes"
sort file.name asc
```


```encounter
name: Catacombs
creatures:
 - 1: 5e 04
 - 1d2: 5e 03
 - 1d4: 5e 01
 - 1: Vampiric Mind Flayer
 - 1: Zombie Clot
```

```statblock
creature: Lady Scurvy
```



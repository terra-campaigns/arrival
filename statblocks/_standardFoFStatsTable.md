```dataview
table without ID link(file.link, name) AS "Name", cr AS "CR", eq_level AS "Lvl", ac AS "AC", hp AS "HP", hit_dice AS "HD", skillsaves.Proeficient as "Modifiers", actions.desc AS "Damages"
from "statblocks"
WHERE statblock = true AND source = "Forge of Foes"
sort file.name asc
```


```encounter
name: Catacombs
creatures:
 - 1: 5e 05
 - 1d2: 5e 03
 - 1d4: 5e 01
 - 1: Lady Scurvy
 - 1: Zombie Clot
```

```statblock
creature: 5e 06
```

```statblock
creature: Frost Anak Warchief
```


# Simple and integrated Statsblocks for 5e and WN

## Standard statblocks per CR and Level

```dataview
table without ID link(file.link, name) AS "Name", eq_level AS "Lvl", cr AS "CR", ac AS "AC/DC", hp AS "HP", hit_dice AS "HD", stats as "Stats", skillsaves as "Skills", actions.desc AS "Damages"
from "statblocks"
WHERE statblock = true AND source = "Forge of Foes WN Converted"
sort file.name asc
```

## Integrating WN and 5e statblocks

| WN         | 5e                  | Notes                                  | Conversion                                        |
| ---------- | ------------------- | -------------------------------------- | ------------------------------------------------- |
| AC         | AC                  | Equivalent, slightly higher in 5e      | -                                                 |
| hp = f(HD) | hp = f(HD)          | Equivalent                             | -                                                 |
| HD         | Lvl = f(CR)         | Equivalent                             | -                                                 |
| Atk        | Proeficient (FoF)   | WN has higher at high HD               | -                                                 |
| Dmg        | Damage output (FoF) | 5e has higher at high CR, but no shock | -                                                 |
| Skill      | Proef Bonus (5eSRD) | WN uses 2d6, 5e uses 1d20              | WN: 3/5 of value or roll 2d1                      |
| -          | STR / CON STs       | WN uses a single ST                    | Use Fortitude for STR/CON ST = 6 + eq_level / 2   |
| -          | Initiative with DEX | WN: no initiative mod to NPCs          | Use +2 on 5e and +0 on WN                         |
| Instinct   | -                   | WN rolls over 1d10                     | WN = 18 - 2 x (Inst) <br />5e = 10 + INT mod      |
| Morale     | WIS DC 10           | 5e rolls 1d20, WN rolls below 2d6      | WN = 4/3 x (ML) <br />5e = 10 + Best(INT/CHA mod) |
| Save       | -                   | WN has a unified save (15 - level/2)   | Use WN                                            |


## Appendix: Evaluation of Morale and Instinct

![](https://imgur.com/uzSHtOh.png)

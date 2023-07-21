# Foes Without Number
***To be run with 5e and WN games. Inspiration: Forge of Foes.***

## Template statblocks

```dataview
table without ID link(file.link, name) AS "Name", hit_dice AS "HD", ac AS "AC", stats as "Stats", skillsaves as "Skills", actions.desc AS "Damages"
from "statblocks"
WHERE statblock = true AND source = "Foes Without Number"
sort file.name asc
```

![Table of template foes](../rules/foesWN.md#Table%20of%20template%20foes)

## Uncanny powers

Creatures can (and should) have their stats modified from the template to reflect mightier or lesser foes at the same challenge rank. **Choose what makes sense for the world.** An evaluation of creature degrees of power as table below (`HD / 2` is a good *soft* guideline). A point-buy system for additional effects (based on WWN powers, 5e's MM, Forge of Foes, etc) can be used.

![|400](https://i.imgur.com/TQgtQ8q.png)

Each of the modifications below is also worth one point:

| Modification      | Description                   | Weak (-1)             | Strong (+1)                                 |
| ----------------- | ----------------------------- | --------------------- | ------------------------------------------- |
| **Size**          | Sheer size affects sturdiness | d4 tiny<br />d6 small | d10 large<br />d12 huge<br />d20 gargantuan |
| **Armour class**  | Improved armour or skin       | -2 AC                 | +2 AC                                       |
| **Attack and DC** | Fighting and magical prowess  | -2 Atk, -2 DC         | +2 Atk, +2 DC                               |
| **Damage output** | Ability to cause damage       | -2d6                  | +2d6                                        |
| **Saving throws** | Readiness and resolve         | -2                    | +2                                          |

## Morale and Instinct

Morale conversions and roll
- 5e: 8 + 1/2 best(WIS|CHA) modifier, rounded down.
- WN: as bestiary stats.
- 2d8 system: multiply by 3/4
- Roll as WN rules (2d6 equal or under to pass)

Instinct conversions and roll
- 5e: 8 + 1/2 INT modifier, rounded down
- WN: 11 - Instinct
- 2d8 system: multiply by 3/4
- Roll 2d6 equal or under to pass

![](https://imgur.com/uzSHtOh.png)

![Foes ranks](../rules/foesWN.md#Foes%20ranks)
---
type: [context/realms, context/secrets]
name: The secrets of the Realms of Guemenos
world: Guemenos
campaign: Arrival
tags: 
---

# Secrets for Realms

## Linhe
***Sources: [Har'Akir](https://5e.tools/book.html#vrgr,-1,har'akir,1) and [Falkovnia](https://5e.tools/book.html#vrgr,-1,falkovnia,0)***

![](https://i.imgur.com/v8S2Wrq.jpg)

**Regional perilous rank, per type of area**
- **Populated:** 3 hex band (1.5 each side) alongside roads riverways, and around settlements
	- Non constructed areas (including roads and rivers): rank 0
	- Constructed areas: rank 1 - settlement, ruin and lair defences
- **Unpopulated**
	- Non constructed areas (including roads and rivers): rank 1
	- Constructed areas: rank 2 - settlement, ruin and lair defences


```dataview
table without ID link(file.link, name) AS "Name", hex as "Hex Code", sub as "Location", type as "Type", rank as "Rank", status as "Status"
from "campaign"
WHERE category = "location" AND campaign = "Arrival" AND land = "Maqqatba" AND region = "Linhe"
sort hex asc
```

Possible ruins and lairs:
- [Xaganis](https://www.drivethrurpg.com/product/419655/The-Fettered-Factory?manufacturers_id=18628)
- 12 towers

### Wandering Encounters in Linhe

| d4  | Linhe (Desert, Ammuinoth)                                                | Additional rolls                           |
| --- | ------------------------------------------------------------------------ | ------------------------------------------ |
| 1   | Predators or herd animals</br>(+2 on table if night or Ammuinoth)        | Beast table, surprise, distance, mood and reaction             |
| 2   | Inhabitants or elite</br>(+2 on table if night or Ammuinoth)             | Sapient table, surprise, distance, activity, and reaction |
| 3   | Misbegotten, outsiders, monsters</br>(+2 on table if night or Ammuinoth) | Misbegotten table, surprise, distance, mood and reaction       |
| 4   | Environment effect                                                       | Wilderness or dungeon effects              |

| d6  | Beast                        | Rank 0 location           | Rank 1 location            |
| --- | ---------------------------- | ------------------------- | -------------------------- |
| 1   | Sand sheep, antelope         | `encounter: 1d4+1: HD 00` | `encounter: 1d4+1: HD 00`  |
| 2   | Scorpions, vipers, sand cats | `encounter: 2d4: HD 00`   | `encounter: 2d6: HD 00`    |
| 3   | Dust hawks and vultures      | `encounter: 2d6: HD 00`   | `encounter: 2d8: HD 00`    |
| 4   | Hyenas, jackals              | `encounter: 2d6: HD 01`   | `encounter: 2d20+1: HD 01` |
| 5   | Dire desert wolves           | `encounter: 1d4: HD 02`   | `encounter: 2d8: HD 02`    |
| 6   | Desert lions                 | `encounter: 1d4-2: HD 03` | `encounter: 2d4: HD 03`    |
| 7   | Cave bear                    | `encounter: 1: HD 04`     | `encounter: 1d4+1: HD 04`  |
| 8   | Sabre-toothed tiger          | `encounter: 1: HD 05`     | `encounter: 1d4-1: HD 05`  |

| d8  | Sapient           | Rank 0 no                                                              | Rank 1 no                                                              |
| --- | ----------------- | ---------------------------------------------------------------------- | ---------------------------------------------------------------------- |
| 1   | Rurkinar          | `encounter: 2d6: HD 00`                                                | `encounter: 2d8: CR 1/8`                                               |
| 2   | Dust elves        | `encounter: 2d4-2: HD 02`                                              | `encounter: 2d8: CR 1/2`                                               |
| 3   | Mercian commoners | `encounter: 2d4-2: HD 02`                                              | `encounter: 2d8: CR 1/2`                                               |
| 4   | Bandits           | `encounter: 2d4-2: HD 02`                                              | `encounter: 2d8: CR 1/2`                                               |
| 5   | FFKA scouts       | `encounter: 2d2-1: War Scout`                                          | `encounter: 2d4: War Scout`                                            |
| 6   | Anak lesser       | `encounter: 2d8: Anak Scout`                                           | `encounter: 2d12: Anak Scout`                                          |
| 7   | FFKA Tent         | [E(HD) 26](../../factions/ffkaEast.md#FFKA%20East%20Stochastic%20Tent) | [E(HD) 26](../../factions/ffkaEast.md#FFKA%20East%20Stochastic%20Tent) |
| 8   | Anak War Band     | [E(HD) 18](secretsCultures.md#Anak%20War%20Band)                       | [E(HD) 18](secretsCultures.md#Anak%20War%20Band)                       |
| 9   | Mercian Antinomi  | [E(HD 15)](secretsCultures.md#Mercian%20Antinomi%20Group)              | [E(HD 15)](secretsCultures.md#Mercian%20Antinomi%20Group)              |
| 10  | Deepfolk raiders  | Not ready                                                              | Not ready                                                              |

| d4  | Misbegotten                  | Rank 0 no                     | Rank 1 no                       |
| --- | ---------------------------- | ----------------------------- | ------------------------------- |
| 1   | Misbegotten (giant) vultures | `encounter: 2d4: HD 01`       | `encounter: 2d12 + 2: HD 01`    |
| 2   | Misbegotten (giant) scorpion | `encounter: 1: HD 04`         | `encounter: 1d3: HD 04`         |
| 3   | Phase spider                 | `encounter: 1: Phase Spider`  | `encounter: 2d2: Phase Spider`  |
| 4   | Jikegida hunting party       | Not ready                     | Not ready                       |
| 5   | Lady Scurvy                  | `encounter: 1: Lady Scurvy`   | `encounter: 1d3-1: Lady Scurvy` |
| 6   | Undead horde                 | `encounter: 3d12: Slave Husk` | `encounter: 2d2-1: Revenant`    |


## Acrisae
***Theme: Renewal & Hope (wwn124)***

- They are forcing back all the region
- They fought with the elves in a long past
- Farmland is wornning out
- A powerful artefact is helping the ruler

## D'Elsin

![|500](https://i.imgur.com/1HdHyxC.png)


## Underworld

## Ammuinoth

On the map below, in red are Brezal Paths that are followed by roads in the surface; in blue are collapsed or partially collapsed tunnels and in black are tunnels in work order. 

![](https://i.imgur.com/1s32LJn.jpg)


## Underdark

Although the Kyri power touched the drow and duergar before, it was only when the most evil creatures living the Ophaire explored the depths of Shadowfell that the Kyri themselves were awoken. The story is not fully known, but it is said 4500 IT is when Ulkrunnar and his sons and daughters became active in Guemenos.

## Deadecho

The Deadecho, the dominion of [Algath](../context/religions.md#Algath) (and the equally notorious Vardesain and Anu-Akma, fellow demigods of the dead), is notable for its silence - an existence of enormous deserts of bones, dunes of dust, and rivers of blood and tears. These are the dry lands, where life extends past its appointed span, where fate itself is thwarted with regularity, and where liches, vampires, and ghouls gather in enormous numbers to praise their patron and the font of vileness, to cheat death, to praise their protection against a certain voyage into the hells and the joy and strength of the god of the undead and his near-infinite legions.

Deadecho, Plane of Undeath (MWB 46) - Evermaw is confused with the Eleven Hells, since it is an afterlife of ghouls and vampires, cannibals and gluttons. A road like a lolling tongue sprawls through a waterless desert of blood dust, passing towers that sprout like crooked white teeth, until it’s swallowed by the gulletlike sinkhole that houses the city of Vulture’s Beyond, osseous capital of the Hunger God Vardesain, as well as the Eternal Palace of the dry undead lord Mot and the Crystal Necropolis of the guardian god Anu-Akma. Here ziggurats flow with the blood of daily sacrifices, liches study new necromancies of flesh and bone, and the cooks claim they can skin and butcher anything, from ghosts to gods.
---
type: chapter
part: 2
name: 
world: Guemenos
campaign: Arrival
game_date: 3877.5B3
season: summer
location: [Holzander Castle, Ammuinoth, North Desert]
pcs: [Miraak, Dolman, Kethra, Guilf, Amyria]
party_level: 4
members: 5
party_tier: 1
party_rank: 1
xp: 1230
dc_min: 13
cr_gauges: '[6, 8, 9, 12]'
consMgcItm: 2xA
permMgcItem: F
hoardTreasure: 1.6
tags: 

---

# Chapter 8

## Reviews for planning

- [x] Summarise previous chapter
- [x] Update template
- [x] Move unused stuff from previous chapter (next chapter or notions)
- [x] Review [Abridged](../context/abridged.md)
- [x] Review and organise [Notions](../../notions.md)
- [x] Review and organise Sly Flourish secrets for Holzanderd organise Sly Flourish secrets for Holzander
- [x] Think about characters, write motivations & links
- [x] Define party level, easy DC, deadly CR, XP and treasure benchmarks ([chaptersQuery](_aux/chaptersQuery.md))
- [x] Review [Fronts](../factions/_fronts.md) and check if new front has materialised
- [x] Review [Factions](../factions/_factionGame.md) and run one [faction turn](../../rules/factionRules.md), if applicable
- [x] Decide what remaining relevant NPCs are doing, and their respective checks
- [x] Detail strong start
- [x] Outline potential scenes, drafting locations, NPCs and encounters as needed
- [x] Define secrets & clues, reviewing scenes
- [x] Outline fantastic locations, reviewing scenes and secrets
- [x] Outline potential NPCs, reviewing all above
- [x] Outline potential foes, if not all in an appendix
- [x] Define treasure
- [x] Prepare Owlbear, if applicable
- [x] Move big texts to appendix in the file


## Characters

```dataview
table without ID link(file.link, name) AS "Name", species AS "Species", level AS "Level", ac AS "AC", initiative AS "INI", speed, darkvision AS "DKVS", skills.perception AS "PCPT", skills.investigation AS "IVST", skills.insight AS "IGHT", skills.persuasion AS "PSON", skills.stealth AS "SLTH", artefacts AS "Artefacts"
from "campaign"
WHERE type = "pc"
sort file.name asc
```

### Motivations
- **Dolman**: Find Galiera, learn about her stone
- **Miraak**: Prove and learn about himself himself
- **Guilf**: Find and kill Sergarus
- **Amyria**: Libraries, libraries, books, books
- **Kethra**: Find the purple dragon

## Intro
- Things to discuss before game starts

## Strong start 
- 8-day trip to get to Mystra's temple, where characters will rest and recover.
- Encounter: one encounter each 1d6 days [use link level 2, underdark, all sources, all types](https://www.chaosgen.com/dnd5e/encounter)

### Mystra's Temple
- Location: [Mystra's Temple](../locations/templeMystra.md)
- Draw: Find the password for Mystra's door
- NPCs in the temple are: priests, cultists and traders (commoners)
- Consider having a [Thunderstorm](../rules/houseRules.md#Thunderstorm) 2d4 hours after leaving the temple

## Potential scenes 

### Rurkinar festival and ritual, and FFKA censoring
- *Awareness trigger*: As soon as arriving in the city, they see the tower of the temple and hear the movement of people towards it
- *Location*: A flooded monumental hall of brass, in terrible decay, with sweeping passageways encircled by a graveyard. The construction follows the [Iopothae](../context/secrets/secretsHistory.md#Iopothae) style.
- *Dramatic question*: which side will the PCs take, and how
- *Source of conflicts*: Arrival in one of the Linhe cities - Rukinar festival and ritual is happening, [FFKA](../factions/ffkaEast.md) is in position and ready to censor the cultists.
	- **Imortra (Guilf's mother) observing Guilf.**, Someone calls her by her name and she leaves for the Mercian house. If Guilf follows someone grabs him - what is this pert doing here?
	- The ritual finally completes in an unexpected way: the Angel Hound communicates with [Imra Advyre](../factions/rurkinar.md#^imraAdvyre) in imprisoned in the lost castle of the Holzander's.
	- Tense situation, FFKA wants to find reason to imprison cultists
	- [Sergarus](../npcs/sergarus.md) arrive in the next day to interrogate cultists.
	- Imra becomes troubled and mad.
	- *Something else has to create a problem - tbd at table.*

![|500](https://i.imgur.com/FofQtfd.png)

> **Mad poem about the staff**
> 
> *Mmm... the staff, the Thalia's one,
> It's got the power, oh yes, it's second to none,
> Lightning and thunder, its magic can stun,
> She imbued the gods, and their power she spun.
> 
> Thalia was an acolyte, young but wise,
> She brought the old pantheon to rise,
> Restored their strength with magic ties,
> And now she serves as an Angel in the skies.*

### Dannamore to desert thunderstorm
- Location: Exit from [dannamore](../locations/dannamore.md)
- Environment: [Thunderstorm](../rules/houseRules.md#Thunderstorm)
	- Temperature: [-10C, 0C]
	- Wind: Severe, 50 Km/h
	- Duration: 3 days
	- Time of day: 1d4 x 6h, but it is dark due to the thunderstorm
- Threat: Pressured by frost goblins and a thunderstorm with an elemental
- Conflict: When characters reach the Ardismouth temple, it is now a camp of frost goblins - they are famished and would attempt to kill the characters to eat them, it is possible to dodge them, and go to the desert - but they might follow. In the desert there is an immense thunderstorm. In the thunderstorm, water elementals are present. If the characters go out, engage, and come back to the Ammounith, the elemental will follow them.
- End conditions: Thunderstorm passes (elemental will go away too, if not killed); Characters give up on this exit; Goblins are dealt with

```encounter
name: Desert Thunderstorm (CR 15)
creatures:
 - 2: Bugbear
 - 12: Goblin
 - 10: Hobgoblin
 - 1: Air Elemental
```

### H114 Mystra's door
- Location: [Mystra's Door](../locations/holzanderCastle.md#Mystra's%20Door)
- Draw: Learn where the door is located for finding it from above
- From the desert side it connects to [dannamore](../locations/dannamore.md)

### Lady scurvy infected
- Scene: At night, a collapsed statue and ruins. An adolescent-shaped hooded humanoid is walking around, sounds of sobbing. She is actually a vampiric mind flayer.
- Dramatic question: overshadowing a different lady scurvy
- Sources of conflict: Spawns are hungry
- End conditions: Spawns are dealt with

![|500](https://rare-gallery.com/mocahbig/407675-fantasy-art-artwork-statue-ruin-ruins.jpg)

![|500](https://i.imgur.com/PGBhLdG.png)

```encounter
name: Lady Scurvy (CR 5)
creatures:
 - 1: Vampiric Mind Flayer
```

### Twice dead sandwich seller

### Meet Nurderad outcast
- Scene: While travelling, they meet Gulthas Morseth, a dragonborn outcast from north Nurderad.
- Dramatic question: Information on the battlemage Grezar ([Aivridyt](../npcs/aivridyt.md)) and the attack under his influence. Outcast has been living alone in the north desert for the last 10 years - ashamed to come back to Nurderad.

### Arrive in the city of Linhe

## Information Pool

**Holzander Castle**
- [ ] #spoiler Location of the Ancient Elven Library: in a secret cavern in the Ammuinoth, where now is the Holzander castle.
- [ ] #strategic One who possesses Cagoth-ze’s ring and the instructions for recalibrating the time construct can set it randomly so it will almost never return back here again.
- [ ] #strategic Cagoth-ze had Imortra build a summoning circle and summon Lasbascilag (the Lesser Infernal Tutor). Immorta wants nothing to do with the devil (she knows how dangerous it is). Cagoth thinks he can control the devil to get valuable information.
- [ ] #strategic The furnace in area 206 (pg 54) is drawing tremendous arcane power beyond any one wizard’s ability to control. The source of this power lies deeper in the citadel. The draw of power to this furnace is keeping this power tethered and strained. It’s like a knot in a tangle of ropes.
- [ ] #spoiler Closing the portal requires more than just traditional magic or arcane manipulation. A darkness deep below the Scarlet Citadel is responsible for the open wound leading to the Dry Lands.
- [ ] #spoiler Torture of Galiera and the calling for the Angel Hound
- [ ] #spoiler Cagoth-ze is a powerful wizard but completely obsessed with acquiring knowledge of the elves who used to be here. The elves managed to hide their lore not in a place, but in a time, and that steered Cagoth-ze into the twisted practice of Time Magic. It’s amazing he hasn’t torn himself into pieces spread over thousands of years practicing this type of heretical magic.
- [ ] #spoiler  Cagoth-ze has constructs traveling into the future to recover elven tomes hidden away in the future. They bring them back and attempt to copy them before those tomes disappear back to the future. It takes many runs on the same book to make a full copy. It’ll take years to get the whole library copied.
- [ ] #puzzle Exit of Mystra's door is in the Dannamore Hold ruins
- [ ] #puzzle The furnace in area 206 (pg 54) is drawing tremendous arcane power beyond any one wizard’s ability to control. The source of this power lies deeper in the citadel. The draw of power to this furnace is keeping this power tethered and strained. It’s like a knot in a tangle of ropes.
- [ ] #puzzle The multiple nodes tying these lines of power together. Each must be disabled to release the tension of the lines.
- [ ] #spoiler Level 3 used to be the dwarven barracks of the dwarves who built the Scarlet Citadel but is now overrun with trollkin and dire owlbears bred by the dwarves long ago. Below are the unconstructed caverns of the Ghost Domain - where a dark river flows.

**Linhe**
- [ ] #puzzle FFKA very little knowledge about the castle - and just a bunch of religious bullies
- [ ] #puzzle Every few months, on the night of the new moon, hordes of undead appear from the Ghost Domain and invade Linhe.
- [ ] #puzzle Dark thunderstorms a becoming very frequent and the [Desolate Flats](../context/environments.md#Desolate) are becoming even more bare, and the undead are now coming - related to the weakening of the Angel Hound spirit (and the Brezal Paths energy overflowing).
- [ ] #spoiler  Province of Linhe is the most important in Katho, after the capital - as the last territorial defence against the south.
- [ ] #context Darklake in the Ghost Domain connects this world with the world of the dead. A great and terrible river runs underneath the world in Linhe – this is actually a branch of the River Styx.
- [ ] #puzzle Similar creatures to the Lady Scurvy ghouls were once fought in the Katho-D'Elsin war - and are thralls of the vampires, but not with the attached symbiont.
- [ ] #spoiler Give hint that the Rurkinar have been trying to communicate with the Angel Hound, with no success

**General**
- [ ] #spoiler Music about the Glasrath heroes that saved the mountains and then died in the tunnels.
- [ ] #spoiler Frost goblins come from D'Elsin and the non-evil have been pushed north by the forces of Turnskull advancing
- [ ] #spoiler Theory around existence of shadow dragons.
- [ ] #context  Age of dragons in the past, now they barely leave the Dragons' Island
- [ ] 
- [ ] #context Stone from Gaelira in a book of Geology of Etor - where the Ghost Domain subsides with the surface [D'Elsin](../context/secrets/secretsRealms.md#D'Elsin). These rocks were used in the long past by godbound bechanics.
- [ ] #spoiler Foucheresia is joining Katho in the war, and sending the Thymar host south
- [ ] #spoiler Agents of Silk have captured Daardendrien Turan, the Nurderad clan elder and replaced him with a puppet

**Ancient Elven Library**
- [ ] #spoiler Gold Dragons looks similar to Iopothae's constructs run by Seraphic Engines
- [ ] #spoiler Illithids were the ancient creatures that enslaved the Duergar and the Drow when they reached the depths of the Ghost Domain. They have been running experiments for millennia.
- [ ] #spoiler Great confluence and pooling of energy is all but unique in the Castle of Holzander
- [ ] #spoiler Partial map of the Ghost Domain
- [ ] #context Perhaps no region inspires more tales of terror across the face of Guermenos than the ruined desert. A once-verdant land permanently ravaged by the Great War. A puckered, ragged scar of desiccated land.
- [ ] #context [The great purge](../context/secrets/secretsHistory.md#The%20great%20purge)
- [ ] #context For centuries, tyrannical arcanists dueled over the Brezal Paths. Tremendously powerful creatures built and abandoned principalities as the fickle Paths shifted, and the constant magical strife among the rivals drained the life from the land. Only the bones of these cities remain today, their tumbled stones and spires covering a landscape.
- [ ] #context When the elves realized the enormity of what this library represented, they cast an enchantment over the place to protect it. Their enchantment threw the library and its contents 100,000 years into the future. That distant age is far beyond the collapse of all predicted civilizations. The elves reasoned that even if the library were discovered to exist in that time, it’s unlikely anyone of that era could understand its contents; according to elven oracles, whatever creatures inhabit Midgard 100,000 years in the future will have a completely different understanding of the fundamental underpinnings of magical philosophy.

## Fantastic locations  


### Relevant settlements

```dataview
table without ID link(file.link, name) AS "Name", province AS "Province", population AS "Population", culture AS "Cultures", religion AS "Religions", factions AS "Factions"
from "campaign"
WHERE type = "settlement" AND tags = "relevant"
sort file.name asc
```
  
## Important NPCs  

### New NPCs
- **Gulthas Morseth**: Dragonborn outcast (knight), that was on the 3868 NC's raid of [Tolfoddund Mines](../locations/tfddMines.md). He lives in the roads protecting the weak, as a form of redemption for his sins. ^Gulthas
- [Imra Advyrye](../factions/rurkinar.md#^imraAdvyre) (Rukinar high priest)

### Long-lived relevant NPCs

```dataview
table without ID link(file.link, name) AS "Name", species, location, faction
from "campaign"
WHERE type = "npc" AND tags = "relevant"
sort file.name asc
```

## Potential treasures  
- [Bitterluchcloak](../context/secrets/secretsArtefacts.md#Bitterluchcloak)
- 1000 gp
- Stones
	- Amber (translucent rich gold, 100gp)
	- Jade (translucent white, 100gp)
- [Potion of Greater Healing](https://www.dndbeyond.com/magic-items/potion-of-healing)
- [Scroll of Ceremony](https://www.dndbeyond.com/spells/ceremony)
- [Scroll of Prestidigitation](https://www.dndbeyond.com/spells/prestidigitation)

## Appendix

## Additional unlikely scenes

### H113 Catacombs and vision of the Ophaire
- Location: [Catacombs](../locations/holzanderCastle.md#Catacombs) (as set out in SC45)
- Threat: PCs may think there is something here, but except for the information of the Ophaire, there is nothing. 
- Conflicts: Incoming undead never stops - Keep adding foes as necessary to make this area a tough one. A rule of thumb, when combat starts roll a 1d4. That is the number of monsters that (if below), would trigger another incoming foe (from table below). When a new foe comes, roll again. And keep doing it.
- End conditions: The PCs realise there is nothing here for them.

| 1d12 roll | Outcome            |
| --------- | ------------------ |
| 1 - 4     | Skeletons (CR 1/4) |
| 5 - 7     | Shadows (CR 1/2)   |
| 8 - 9     | Wights (CR 3)      |
| 10        | Spectres (CR 5)    |
| 11        | Wraights (CR 5)    |
| 12        | Bodak (CR 6)       |

```encounter
name: Catacombs
creatures:
 - 1: Wight
 - 1d2: Shadow
 - 1d4: Skeleton
```

### H202 (CR 4.5)

- Jelly hybrid (CR 3)

![](https://i.imgur.com/XL49tHG.png)

![|500](https://i.imgur.com/OirmZpf.png)

```encounter
name: Mephits
creatures:
 - 1: Ice Mephit
 - 1: Dust Mephit
 - 1: Magma Mephit
 - 1: Steam Mephit
```

- Damage Immunities. Add acid.
- Death Burst. A creature that fails its saving throw also takes 3 (1d6) acid damage in addition to the standard effects.
- Innate Spellcasting. The mephit can choose between its listed spell or acid splash (7 [2d6] damage).
- Claws. A hit deals 2 (1d4) acid damage in addition to other listed damage.
- Breath Weapon. The attack deals 5 (2d4) acid damage in addition to other listed damage and effects.

### H203 (CR 1 + 2)

![](https://i.imgur.com/U6lDRyc.png)


```encounter
name: 203 secret (CR 2)
creatures:
 - 1: Gelatinous Cube
```

### H204 (CR 4)

```encounter
name: Frost Goblins (CR 4)
creatures:
 - 1: Goblin Boss
 - 6: Hobgoblin
```

### H206 (CR 7.5)

- [Maksilov](../npcs/maksilov.md) and Bastron (CR 4)

Potion of heroism and hill giant strength. Bastron keeps the small potion vial on a string around its neck. When it looks like a fight is about to break out he drinks **before**.

```encounter
name: Mephits (CR 1.5)
creatures:
 - 1: Ice Mephit
 - 1: Dust Mephit
 - 1: Magma Mephit
 - 1: Steam Mephit
```
- Damage Immunities. Add acid.
- Death Burst. A creature that fails its saving throw also takes 3 (1d6) acid damage in addition to the standard effects.
- Innate Spellcasting. The mephit can choose between its listed spell or acid splash (7 [2d6] damage).
- Claws. A hit deals 2 (1d4) acid damage in addition to other listed damage.
- Breath Weapon. The attack deals 5 (2d4) acid damage in addition to other listed damage and effects.

- **On round 2 or 3: Ochre Jelly (CR 2)falls from ceiling and receives [potion of growth](https://roll20.net/compendium/dnd5e/Enlarge%20Reduce?expansion=0#content)**

### H208 (CR 2)

**Mention an invisible field in the air that somehow seizes onto and discorporates whatever it touches, like some sort of slow-acting stasis or disintegration field.** Active successful DC 15 Wisdom (Perception) check to spot it. Even then, it looks like an out-of-focus disturbance in the air, not a solid object.

![](https://i.imgur.com/55qmtZe.png)

When the dire gelatinous cube first starts its turn with 28 or fewer hit points, it reflexively strikes the cracked holding tank as a bonus action. This ruptures the tank and floods the room with ooze plasma. Every space from the top of the stairs to the door into Area 202 quickly becomes ankle-deep in ooze plasma, making it difficult terrain and dealing (2) 1d4 acid damage to every creature standing in the stuff at the start of their turn. The dire gelatinous cube heals 18 (4d4 + 8) hit points thanks to the infusion of plasma. In addition, every creature in that area when the tank is ruptured must make a successful DC 13 Dexterity saving throw or fall prone as the corrosive plasma envelops their feet. The cube tries to engulf as many prone characters as possible, and prone characters attempt to save against the attack with disadvantage.

Finally, just because the cube is eventually killed doesn’t mean it stops being a threat. It can still block the passage (invisibly), and it’s still powerfully acidic to anyone and anything attempting to climb over it or squeeze through it.

### H211

Baska (Lasbascilag) - Ice Barbed Devil

![|500](https://i.imgur.com/rV7eNk6.png)

```encounter
name: Summoning circle (CR 5)
creatures:
 - 1: Barbed Devil
```

### H216 Scriptorium

- make new time travel table including:
	- past is history context
	- much further away past which looks like today
	- future that looks like the past

**Timeline destination (d8 roll)**
1. *1,500 Years in the Past.* The characters are in a natural cavern. Four savage-looking dwarves squat around a fire, roasting meat on sticks. The dwarves cry out in an unrecognized, guttural language and grab stone-tipped spears lying in the dirt. Before they can hurl the spears, blue light engulfs the scene, and the characters find themselves falling again.
2. *500 Years in the Past.* The walls and furnishings of the library are ornate. Three elves are in the room, reading or sorting material on the shelves. They look at the characters with mild curiosity. They’ve seen the construct before, or at least heard about its rare appearances from previous caretakers of the scriptorium. This is the first time it’s been accompanied by anyone other than the clockwork servants, though these elves might not know that. How long the construct remains is up to you. The elves are friendly and willing to talk, but they won’t allow any material to be taken from their library. They speak only archaic Elvish (which is difficult to understand) and Draconic. Should the characters decide to get hostile, these elves use the stats of an archmage, an assassin, and a gladiator. When the construct fires up to leave, the elves quickly step out of its range and remain behind in their own time.
3. *500 Years in the Future.* The scriptorium has been converted into a temple to Mammon, god of greed and madness. The room is swelteringly hot from an immense oven shaped like a monstrously fat humanoid that stands in the southern portion of Area 215. Its open belly serves as the firebox, and flames within it are the only illumination. Six cultists and one cult fanatic in robes kneel before it. An orc, bound and gagged, lies on a table that can be tipped up to slide the orc into the blazing furnace. If characters do nothing, the sacrifice continues. If characters intervene, the cultists fight to the death. The freed orc is grateful but wants only to return to his village.
4. *1,000 Years in the Future.* The characters land in the midst of a battle between six duergar and two gricks. No matter who wins, they aren’t welcoming toward the party. The structure of the scriptorium is still recognizable despite considerable damage wrought by time, earth tremors, burrowing monsters, and other stresses.
5. *5,000 Years in the Future.* The chambers are barely recognizable from their earlier features. The hole in the floor of Area 215 has been repaired. Area 218 has been converted into a throne room for a clockwork king attended by six clockwork soldiers (Creature Codex) and four courtiers (clockwork servants). They have, of course, heard tales of the shining blue deity that appeared briefly to their foregears generations ago but never imagined it would return in their runtimes. King Zakchi assumes the characters are the organic slaves of the time construct and the obviously superior clockwork servants, and he tends to ignore them or even become slightly offended if characters speak to him directly.
6. *20,000 Years in the Future.* The former scriptorium has overgrown into a subterranean garden filled with towering fungi, albino ferns, snaking vines, and human-sized carnivorous flowers. The northern portion of Area 216 and the rest of the scriptorium is inhabited by an organism that behaves as one immense shambling mound whose attacks have a 15-foot reach.
7. *50,000 Years in the Future.* Undead from the Dry Lands have taken control of the now unrecognizable area. A wight, a ghast, and three ghouls are prowling through the chambers. The architecture looks as if the whole place was sculpted from worm-eaten bone. Over its bulky armor, the wight wears grave-stained priestly robes of dark maroon with a bright red sash. It confronts the characters in Darakhul that has evolved to the point where it’s incomprehensible; it switches to nearly unintelligible Common if they don’t understand its first attempts. The wight-priest demands to know why the intruders defy the holy commands of Syrinx. It does not explain what this means, and if characters protest their innocence in any way, the undead attack in a righteous fury. More undead can join in if you want to up the ante.
8. *75,000 Years in the Future.* By this time, the upper layers of the citadel are gone, blasted away by some titanic cataclysm. The area is open to the sky, which is wreathed in sheets of perpetual green flame. The dominant life form is chuuls, and they’ve become considerably more intelligent over the millennia. Two chuuls stand nearby. Their stats are identical to standard chuuls except they have an Intelligence score of 24 and telepathy (240 feet). They are only momentarily perturbed by the arrival of the time construct and the characters. One of the chuuls issues a telepathic command to “surrender the devices and prepare for cranial cessation.” The other chuul levels a complex metal device about 9 feet long at the characters. The device is a lightning gun capable of shooting a lightning bolt every other round (100-foot line; 8d6 lightning damage; save DC 13; can be fired only by someone with chuul claws and telepathy).


![|400](https://i.imgur.com/7CU16zR.png)


![](https://i.imgur.com/clvmAx4.png)

![](https://i.imgur.com/BNt8jay.png)

### H217

- [cagothze](../npcs/cagothze.md)

### Arrival in Glasrath
- More alignment with Ghuse than before. Too many undead working on the mines. Trading is going well.

---
category: chapter
part: 2
name: Searching the ancient library
world: Guemenos
campaign: Arrival
game_date: 3877.6A6
season: autumn
location: [Gimorcok, Eyaram, Holzander Castle]
pcs: [Miraak, Dolman, Kethra, Guilf, Amyria]
party_level: 5
members: 5
party_tier: 2
party_rank: 1
xp: 1480
dc_min: 13
cr_gauges: '[7, 8, 10, 14]'
consMgcItm: 3xA
permMgcItem: --
hoardTreasure: 0.2
tags: 
---

# Chapter 10 Searching the ancient library

## Reviews for planning

- [x] Summarise previous chapter
- [x] Define a consequence in the world of the actions of the PCs on the previous session (consider snoozing hooks)
- [x] Move unused stuff from previous chapter (next chapter or notions)
- [x] Review [Abridged](../context/abridged.md)
- [x] Review and organise [Notions](../../notions.md)
- [x] Review and organise Sly Flourish secrets for Holzander
- [x] Think about characters, write motivations & hooks, and bring one background bit to the session
- [x] Define party level, easy DC, deadly CR, XP and treasure benchmarks ([campaignTracker](_aux/campaignTracker.md))
- [x] Review [Fronts](../factions/_fronts.md) and check if new front has materialised
- [x] Review [Factions](../factions/_factionGame.md) and run one [faction turn](../../rules/factionRules.md), if applicable
- [x] Decide what remaining relevant NPCs are doing, and their respective checks (wwn334)
- [x] Detail strong start
- [x] Define chapter template (combat, investigation, etc.)
- [x] Outline potential scenes, drafting locations, NPCs and encounters as needed. Define alternatives to combat for all scenes (1 or 2)
- [x] Define secrets & clues, reviewing scenes
- [x] Outline fantastic locations, reviewing scenes and secrets
- [x] Outline potential NPCs, reviewing all above
- [x] Outline potential foes, if not all in an appendix
- [x] Define treasure
- [x] Prepare 2 day and night random encounters 
- [x] Prepare Owlbear, if applicable
- [x] Move big texts to appendix in the file
- [x] Prepare random encounters (linked with secrets) - including random locations
- [ ] Owlbear L3


## Characters

```dataview
table without ID link(file.link, name) AS "Name", species AS "Species", level AS "Level", xp, ac AS "AC", initiative AS "INI", speed, darkvision AS "DKVS", sanity AS "SNTY", skills.perception AS "PCPT", skills.investigation AS "IVST", skills.insight AS "IGHT", skills.persuasion AS "PSON", skills.stealth AS "SLTH", artefacts AS "Artefacts"
from "campaign"
WHERE type = "pc"
sort file.name asc
```

### Motivations
- **Dolman**: Find Galiera, learn about her stone
- **Miraak**: Prove himself and win back the respect of the Nurderad
- **Guilf**: Find and kill Sergarus, talk with mother, scare the shit out of everyone
- **Amyria**: Ammuinoth lore, protect little Guilf
- **Kethra**: Find the purple dragon

## Intro

- Not revising approach to Sanity yet.
- Set session trackers: lost sanity, used HD, turns

## Story scenes

### FFKAs departure

- FFKA scout from Eyaram arrives, there has been another undead attack in the east of the Fort City of Eyaram.
- FFKA is sending a patrol of 7 knights
- Sergarus is staying behind.

## Exploration scenes
***Travel from Gimorkoc to Holzander (20 hexes)***

![|500](https://i.imgur.com/cERKKSF.png)

![|650](https://i.imgur.com/VMKmVPU.png)

- 1 in 8 for each new hex, run hex table below (done in prep)
- 1 in 8 for night camping: [encounter generation](https://www.chaosgen.com/dnd5e/encounter) level 5, Shadowfell, MM, mix, generate 10, roll 1d10
- 1 in 8 each day PCs spend in a single hex: [encounter generation](https://www.chaosgen.com/dnd5e/encounter) level 4, Desert, MM, mix, generate 10, roll 1d10
- 1 in 8 if foraging: [encounter generation](https://www.chaosgen.com/dnd5e/encounter) level 3, Desert, MM, mix, generate 10, roll 1d10
- **Find ways to give secrets during exploration scenes.**

### Nurderad outcast

- **Expect Miraak to be the most engaged PC**
- Scene: While travelling, they meet Gulthas Morseth, a dragonborn outcast from north Nurderad. He has a lair in the road, with oil barrels, traps, etc.
- Dramatic question: Information on the battlemage Grezar ([Aivridyt](../npcs/aivridyt.md)) and the attack under his influence. After the mines were clear, Aivrindyt took her true form and executed the dragonborn. Outcast has been living alone in the north desert for the last 10 years - ashamed to come back to Nurderad.
- **Grezar was responsible for Miraak's accident in the war in the south**
- *Eating twice dead barbecue*

### Temple of Remains

[Temple of Remains](../locations/templeOfRemains.md)

### Dannamore's entrance - desert thunderstorm

- Location: Entrance from [Dannamore](../locations/dannamore.md)
- Environment: [Thunderstorm](../../rules/houseRules.md#Thunderstorm)
	- Temperature: [-10C, 0C]
	- Wind: Severe, 50 Km/h
	- Duration: 3 days
	- Time of day: 1d4 x 6h, but it is dark due to the thunderstorm
- Threat: Pressured by frost goblins and a thunderstorm with an elemental
- Conflict: When characters reach the Ardismouth temple, it is now a camp of frost anaks - **they are famished and would attempt to kill the characters to eat them**, it is possible to dodge them, and go to the desert - but they might follow. In the desert there is an immense thunderstorm. In the thunderstorm, water elementals are present. If the characters go out, engage, and come back to the Ammounith, the elemental will follow them. **PCs might avoid the battle and join forces with elemental.** See [Dannamore](../locations/dannamore.md) for background story.
- End conditions: Thunderstorm passes (elemental will go away too, if not killed); Characters give up on this exit; Anaks are dealt with

```encounter
name: Desert Thunderstorm (CR 15)
creatures:
 - 1: Great Anak Warchief
 - 1d4 + 4: Great Anak Warrior
 - 1: Air Elemental
```

### Dead Made God

- Roll [encounter generation](https://www.chaosgen.com/dnd5e/encounter) level 5, Desert, MM, mix, generate 10, roll 1d10

![|500](https://i.imgur.com/0dL6nxF.png)


## Information Pool

**Holzander Castle**
- [ ] #strategic Danaska and Cagoth-ze are at odds as danaska thinks it is cagoth-ze's fault that her documents were vanished
- [ ] #puzzle **Danaska made a calming potion for the trollkin to take Gaelira somewhere (to Raganni for a Lich ritual)**
- [ ] #spoiler Location of the Ancient Elven Library: in a secret cavern in the Ammuinoth, where now is the Holzander castle.
- [ ] #strategic One who possesses Cagoth-ze’s ring and the instructions for recalibrating the time construct can set it randomly so it will almost never return back here again.
- [ ] #strategic Cagoth-ze had Imortra build a summoning circle and summon Lasbascilag (the Lesser Infernal Tutor). Immorta wants nothing to do with the devil (she knows how dangerous it is). Cagoth thinks he can control the devil to get valuable information.
- [ ] #strategic The furnace in area 206 (pg 54) is drawing tremendous arcane power beyond any one wizard’s ability to control. The source of this power lies deeper in the castle. The draw of power to this furnace is keeping this power tethered and strained. It’s like a knot in a tangle of ropes.
- [ ] #spoiler Closing the portal requires more than just traditional magic or arcane manipulation. A darkness deep below the Scarlet Citadel is responsible for the open wound leading to the Dry Lands.
- [ ] #spoiler Cagoth-ze is a powerful wizard but completely obsessed with acquiring knowledge of the elves who used to be here. The elves managed to hide their lore not in a place, but in a time, and that steered Cagoth-ze into the twisted practice of Time Magic. It’s amazing he hasn’t torn himself into pieces spread over thousands of years practicing this type of heretical magic.
- [ ] #spoiler  Cagoth-ze has constructs traveling into the future to recover elven tomes hidden away in the future. They bring them back and attempt to copy them before those tomes disappear back to the future. It takes many runs on the same book to make a full copy. It’ll take years to get the whole library copied.
- [ ] #puzzle Exit of Mystra's door is in the Dannamore Hold ruins
- [ ] #puzzle The multiple nodes tying these lines of power together. Each must be disabled to release the tension of the lines.
- [ ] #spoiler Level 3 used to be the dwarven barracks of the dwarves who built the Scarlet Citadel but is now overrun with trollkin.
- [ ] #spoiler Level 4 are the unconstructed caverns of the Ghost Domain, now territory of a bat cult - where a dark river flows.
- [ ] #spoiler There are twenty five trollkin, eight anak hounds, and four dire flying anaks in the Dwarven Ruins.

**Linhe**
- [ ] #puzzle Dark thunderstorms a becoming very frequent and the [Desolate Flats](../context/environments.md#Desolate) are becoming even more bare, and the undead are now coming - related to the weakening of the Angel Hound spirit (and the Brezal Paths energy overflowing).
- [ ] #spoiler Serhan (guard captain of Glasrath) went into one of the Mercian houses in Linhe
- [ ] #puzzle The Rurkinar need rallying, otherwise they will collapse under the FFKA and the undead attacks
- [ ] FFKA knows the Glasrath Defenders have not perished - FFKA keeping eyes open to find and interrogate then. They are a family with 2 kids and an old brute.
- [ ] Sandman warriors: champions of the Angels
- [ ] Rurkinar is hardly answering the prayers
- [ ] Mercians from the east are reaching out to Glasrath to establish trading routes with them as well - great produce is coming from the mountains who have their strong community now behind the banner of Ghuse.

**General**
- [ ] #spoiler Frost anaks come from D'Elsin and the non-evil have been pushed north by the forces of Turnskull advancing
- [ ] #spoiler Theory around existence of shadow dragons.
- [ ] #context Age of dragon imperators in the past, now they are imprisioned in the Master's Teeth mountains, in the isle of Atba Sim.
- [ ] #context **Stone from Gaelira in a book of Geology of Maqqatba: Chronoliths**.
- [ ] #spoiler Foucheresia is joining Katho in the war, and sending the Thymar host south
- [ ] #context Olivepia is where the head of the Faletist church sits. It is a religious empire with a strong hand on neighbour empires (other empires are vassals)
- [ ] #strategic **Glasrath: number of undead greatly surpasses the number of alive people (2-to-1), mostly working the mines. Singlestrike joins support for Ghuse and population is mostly in full support (about 200 soldiers and guards are supporting). If characters haven't noticed yet, they notice now, that people are looking more pale and seem a bit brain drained.**

**Ancient Elven Library**
- [ ] #spoiler Gold Dragons looks similar to Iopothae's constructs run by Seraphic Engines
- [ ] #spoiler Illithids were the ancient creatures that enslaved the Duergar and the Drow when they reached the depths of the Ghost Domain. They have been running experiments for millennia.
- [ ] #spoiler Great confluence and pooling of energy is all but unique in the Castle of Holzander
- [ ] #spoiler Partial map of the Ghost Domain
- [ ] #context Perhaps no region inspires more tales of terror across the face of Guermenos than the ruined desert. A once-verdant land permanently ravaged by the Great War. A puckered, ragged scar of desiccated land.
- [ ] #context [The great purge](../context/secrets/secretsHistory.md#The%20great%20purge)
- [ ] #context For centuries, tyrannical arcanists dueled over the Brezal Paths. Tremendously powerful creatures built and abandoned principalities as the fickle Paths shifted, and the constant magical strife among the rivals drained the life from the land. Only the bones of these cities remain today, their tumbled stones and spires covering a landscape.
- [ ] #context When the elves realized the enormity of what this library represented, they cast an enchantment over the place to protect it. Their enchantment threw the library and its contents 100,000 years into the future. That distant age is far beyond the collapse of all predicted civilizations. The elves reasoned that even if the library were discovered to exist in that time, it’s unlikely anyone of that era could understand its contents; according to elven oracles, whatever creatures inhabit Midgard 100,000 years in the future will have a completely different understanding of the fundamental underpinnings of magical philosophy.
- [ ] #context #spoiler Theurgy and Theotechnical mechanics

## Potential treasures  
- Angelblind
- 1000 gp
- Stones
	- Amber (translucent rich gold, 100gp)
	- Jade (translucent white, 100gp)
- [Potion of Greater Healing](https://www.dndbeyond.com/magic-items/potion-of-healing)
- [Scroll of Ceremony](https://www.dndbeyond.com/spells/ceremony)
- [Scroll of Prestidigitation](https://www.dndbeyond.com/spells/prestidigitation)

## Relevant settlements  

```dataview
table without ID link(file.link, name) AS "Name", province AS "Province", population AS "Population", culture AS "Cultures", religion AS "Religions", factions AS "Factions"
from "campaign"
WHERE type = "settlement" AND tags = "relevant"
sort file.name asc
```
  
## Relevant NPCs  

- Construct NPCs:
	- Character tags (AotLE)
	- Simple sheet (if required)
	- Image
	- Roleplay aspects:
		- one distinct physical aspect
		- one distinct voice aspect
		- one signature phrase or gesture

- **Gulthas Morseth**: Dragonborn outcast (knight), that was on the 3868 NC's raid of [Tolfoddund Mines](../locations/tfddMines.md). He lives in the roads protecting the weak, as a form of redemption for his sins.

### Current NPCs
```dataview
table without ID link(file.link, name) AS "Name", type AS Species, cr AS CR, char_tags as "Tags", location as Location, faction as Faction
from "campaign"
WHERE category = "npc" AND tags = "current"
sort file.name asc
```

### Dormant NPCs
```dataview
table without ID link(file.link, name) AS "Name", type AS Species, cr AS CR, char_tags as "Tags", location as Location, faction as Faction
from "campaign"
WHERE category = "npc" AND tags != "current"
sort file.name asc
```

## Appendix

## Holzander Castle

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

### H114 Mystra's door
- Location: [Mystra's Door](../locations/holzanderCastle.md#Mystra's%20Door)
- Draw: Learn where the door is located for finding it from above
- Password in ancient Elvish: "*Edr- dolenpant fen, a let golodh n-*" which means "Open resourceful door, and let knowledge be"
- From the desert side it connects to [dannamore](../locations/dannamore.md)

### H Level 2: Cagoth-ze and Danaska at odds

- Roll a d4, 1, 2 they meet Cagoth-ze first; 3,4 they meet Danaska first
- Whoever they meet first tries to identify if the PCs were responsible for the mess on level 2
- If he/she think they were not responsible, he/she promises PCs gold and stones if they kill the other one

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

- [Maksilov](../npcs/danaska.md) and Bastron (CR 4)

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

**Timeline destination (d10 roll)**

1. *27023 years in the past (1463 IT) Construction of the Ammuinoth.* The characters are in a natural cavern, with a single tunnel that goes east and ends in a wellbore opened to the surface above. Ancient Dwarves and Elves are building the Ammuinoth in the region.
	![](https://i.imgur.com/H3JoaRX.png)

2. *23521 years in the past (4523 IT) Awakening of the Kyri.* The characters are in a natural cavern, with a single tunnel that goes east. The opening after the tunnel has a fully built Ammuinoth, with a passage to the surface. The construction utilises proto-seraphic engines and the existing upward wellbore has been vastly expanded expanded to the depths of the earth. The entire area has become an immense city with Dwarves and Elves that look more like Duergar and Drows, respectively.  
	![](https://i.imgur.com/hsBK26m.png)

3. *18009 years in the past (10567 IT), War for Guemenos.* The characters are in a natural cavern, with one single tunnel that goes north. Four savage-looking dwarves squat around a fire, roasting meat on sticks. The dwarves cry out in an difficult to recognise, guttural dwarvish language and grab stone-tipped spears lying in the dirt. If someone speaks with them in dwarvish they explain that a battle has been happening between two godly forces for the last 3000 years. If characters go through the tunnel, they can see scenes of the battle. 
	![](https://i.imgur.com/lr4R0as.png)

4. *9899 years in the past (18540 IT), After the Great Purge.* The characters are in a natural cavern, with one single tunnel that goes north. The cavern has been converted into a temple to Mammon, god of greed and madness. The room is swelteringly hot from an immense oven shaped like a monstrously fat humanoid that stands in the southern portion. Its open belly serves as the firebox, and flames within it are the only illumination. Six [cultists](https://open5e.com/monsters/cultist) and one [cult fanatic](https://open5e.com/monsters/cult-fanatic) in robes kneel before it. An orc, bound and gagged, lies on a table that can be tipped up to slide the orc into the blazing furnace. If characters do nothing, the sacrifice continues. If characters intervene, the cultists fight to the death. The freed orc is grateful but wants only to return to his village.
	![](https://i.imgur.com/pFtxutb.png)

5. *6512 years in the past (5181 GP), Passage to Arkul is opened.* The characters are in a natural cavern with a collapsed ceiling, with one single tunnel that goes north. The collapsed ceiling gives access the Ammuinoth. A flux of bright green high energy is going through the tunnels, and leaves behind some green mucous. The characters land in the midst of a battle between six [duergar](https://www.dndbeyond.com/monsters/16850-duergar) and two [gricks](https://www.dndbeyond.com/monsters/16912-grick). No matter who wins, they aren’t welcoming toward the party.
6. *498 years in the past (3377 NC), before the Great Depart.* The walls and furnishings of the library are ornate. Three elves are in the room, reading or sorting material on the shelves. They look at the characters with mild curiosity. They’ve seen the construct before, or at least heard about its rare appearances from previous caretakers of the scriptorium. This is the first time it’s been accompanied by anyone other than the clockwork servants, though these elves might not know that. How long the construct remains is up to you. The elves are friendly and willing to talk, but they won’t allow any material to be taken from their library. They speak only archaic Elvish (which is difficult to understand) and Draconic. Should the characters decide to get hostile, these elves use the stats of an archmage, an assassin, and a gladiator. When the construct fires up to leave, the elves quickly step out of its range and remain behind in their own time.
7. *1500 years in the future, realisation 982AC123.* The chambers are barely recognisable from their earlier features. The hole in the floor of Area 215 has been repaired. Area 218 has been converted into a throne room for a clockwork king attended by six [clockwork soldiers](https://www.5esrd.com/database/creature/clockwork-soldier/) (Creature Codex) and four courtiers ([clockwork servants](https://www.5esrd.com/database/creature/clockwork-servant/)). They have, of course, heard tales of the shining blue deity that appeared briefly to their forebears generations ago but never imagined it would return in their runtimes. King Zakchi assumes the characters are the organic slaves of the time construct and the obviously superior clockwork servants, and he tends to ignore them or even become slightly offended if characters speak to him directly.
	![](https://i.imgur.com/MrsgVmo.png)

8. *15000 years in the future, realisation D358A-B Uncreated.* Doomsday has arrived, the characters are in the complete dark with only the floor around the construct holding them.
9. *50,000 years in the future, realisation 3.* Undead from the Drylands have taken control of the now unrecognisable area. A wight, a ghast, and three ghouls are prowling through the chambers. The architecture looks as if the whole place was sculpted from worm-eaten bone. Over its bulky armor, the wight wears grave-stained priestly robes of dark maroon with a bright purple sash. It confronts the characters in Darakhul that has evolved to the point where it’s incomprehensible; it switches to nearly unintelligible Common if they don’t understand its first attempts. The wight-priest demands to know why the intruders defy the holy commands of Syrinx. It does not explain what this means, and if characters protest their innocence in any way, the undead attack in a righteous fury. More undead can join in if you want to up the ante.
10. *75,000 years in the future, realisation 789S.* By this time, the upper layers are gone, blasted away by some titanic cataclysm. The area is open to the sky, which is wreathed in sheets of perpetual green flame. The dominant life form is chuuls, and they’ve become considerably more intelligent over the millennia. Two [chuuls](https://5e.tools/bestiary.html#chuul_mm) stand nearby. Their stats are identical to standard chuuls except they have an Intelligence score of 24 and telepathy (240 feet). They are only momentarily perturbed by the arrival of the time construct and the characters. One of the chuuls issues a telepathic command to “surrender the devices and prepare for cranial cessation.” The other chuul levels a complex metal device about 9 feet long at the characters. The device is a lightning gun capable of shooting a lightning bolt every other round (100-foot line; 8d6 lightning damage; save DC 13; can be fired only by someone with chuul claws and telepathy).

![|400](https://i.imgur.com/7CU16zR.png)


![](https://i.imgur.com/clvmAx4.png)

![](https://i.imgur.com/BNt8jay.png)

### H217

- [cagothze](../npcs/cagothze.md)

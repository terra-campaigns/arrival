---
name: Waking up
game_date: 3909.3B1
pcs: Dolman, Guilf, Amyria
rank: 26
xp: 5420 

meta:
  category: chapter
  campaign: Arrival
  world: Latter Earth
  realm: Maqqatba
  region: Linhe
  location: 
tags: 
---
# Chapter 21 

> [!todo]- Planning checklist
> - [x] Abridge previous chapter and distribute XP
> - [x] Commit next chapter draft and check metadata
> - [x] Clean up previous chapter files, update tags and name, make final commit
> - [x] Update (battle)maps, if applicable
> - [x] Define at least one consequence in the world of the actions of the PCs on the previous session, record it in the faction game or notion file
> - [ ] Think about characters, write motivations & hooks
> - [ ] Define Gain and Loss **clocks**
> - [x] Evaluate new game date
> - [ ] Review Abridged
> - [x] Evaluate Faction turn
> - [ ] Review and organise Notions
> - [x] Define XP
> - [ ] Detail strong start
> - [ ] Outline potential scenes:
> 	- [ ] Draft locations
> 	- [ ] Draft NPCs
> 	- [ ] Prepare encounter table
> 	- [ ] Define progress clocks
> - [ ] Prepare Owlbear, if applicable
> - [ ] Review and order/highlight information pool.
> - [ ] Define treasure
> - [ ] Evaluate heat
> - [ ] Update graph view
> - [ ] Print information pool

> [!abstract] Characters' motivations
> - **[Dolman](../pcs/Dolman.md)**: Wake up Gaelira, figure out which side on the war is fighting for Humanity.
> - **[Guilf](../pcs/Guilf.md)**: Exterminate the Ngar'tho 
> - **[Amyria](../pcs/Amyria.md)**: Learn from the book of knowledge. Protect little Guilf, take the Angel Hound to Mystra's temple, destroy the 2 devices left in the castle and kill Gellert

> [!warning] Intro
> - [BookOfKnowledge](../objects/BookOfKnowledge.md): 1 DC 20 check per week of study:
> 	- Gain clock: 4 ticks per question
> 	- Loss clock: 4 ticks per encounter magical entities 

> [!danger] Strong start

Travel to [templeMystra](../locations/templeMystra.md) (while reading the [BookOfKnowledge](../objects/BookOfKnowledge.md)?)
**5 years later, the desert in the NE of Linhe is turning into a moist mud *Arratu*.**

> [!example] Situations

**Travel game**
- Visit cities of [eyaram](../locations/eyaram.md), [gimorkoc](../locations/gimorkoc.md) or [redtower](../locations/redtower.md)
- [ ] Update cities in the way: [eyaram](../locations/eyaram.md), [gimorkoc](../locations/gimorkoc.md) and [redtower](../locations/redtower.md)

**[holzanderCastle](../locations/holzanderCastle.md)**
- Undead took over [holzanderCastleL1](../locations/holzanderCastleL1.md)
- Oozes start to take over [holzanderCastleL2](../locations/holzanderCastleL2.md), and undead are coming too.

**Book of Knowledge, expected questions:**
- **How to wake up [Gaelira](../npcs/Gaelira.md)**: Not only a Dragon-King, but other Sorcerer-Kings from that age might also have the required psionic power. And there is one leading Turnskull. They are in the factory.
- **[ngar-tho](../../_gm/statblocks/ngar-tho.md) physiology**: They require moist locations, weakened by dryness and sunlight.

**Positive encounters**
- **Travel**: [FilarionPapetor](../npcs/FilarionPapetor.md) (or [hermitsCrevasse](../locations/hermitsCrevasse.md)) represents the last remnants of local defenders, driven on by the [Akrasiel](../npcs/Akrasiel.md). They tried to steal [Akrasiel](../npcs/Akrasiel.md)'s sword, but left it behind in their retreat which they desperately need, and they appeal to the PCs to aid them. In exchange, they'll pass on information about a Place that offers a good way to get at the Antagonist without wading through their entire army.
	- **Antagonists**: [Akrasiel](../npcs/Akrasiel.md)
	- **Friends**: Do-gooder bandit chief who raids hostile forces [FilarionPapetor](../npcs/FilarionPapetor.md)
	- **Places**: [CastleTerror](../locations/CastleTerror.md) and the defenders camp in the [hermitsCrevasse](../locations/hermitsCrevasse.md)
	- **Complications**: The local community has been wrecked in fighting
	- **Things**: [Akrasiel](../npcs/Akrasiel.md)'s sword
- **Travel**: [twilightHallsAsylum](../locations/twilightHallsAsylum.md)
- **City**: [EmanuelWeiss](../npcs/EmanuelWeiss.md) has been here for some time, and a his Turnskull constructs (Mob Small 20 HD) are polluting their land with their maintenance, making life almost unliveable for the locals. They're secretly smuggling in a Thing to help them survive, but [Eleni](../npcs/Eleni.md) discovers that their plan is being leaked by a traitor, and if help isn't found soon, the Antagonist will have both the Thing and the ringleaders of the resistance.
	- **Antagonists**: Turnkskull officer [EmanuelWeiss](../npcs/EmanuelWeiss.md)
	- **Friends**: Merchant whose trade routes have been cut by war [Eleni](../npcs/Eleni.md)
	- **Places**: Military camp with soldiers and camp followers
	- **Complications**: The army is bringing a great sickness or plague
	- **Things**: Secret detector for [acrisae](../factions/acrisae.md) manoeuvres. The detector was built in [twilightHallsAsylum](../locations/twilightHallsAsylum.md)
	- **Why important**: It's the only good approach to a soft target in the rear

> [!bug] Clocks

- GAIN 4: Question Book of Knowledge
- LOSS 4: Encounter with Magical Creatures
- LOSS 4: Encounter clocks
- LOSS 6: Pollution from the constructs builds up
- LOSS 6: Akrasiel hunts Fillarion
- LOSS 4: Emanuel needs his medicine

> [!info]- Information pool
> ![Information pool](arrival/_informationPool.md)

> [!tip] Interaction table 
> 
> ```dataview
> TABLE without ID link(file.link, name) as Entity, file.folder as Type, file.outlinks as "Further interactions"
> FROM outgoing([[]]) 
> SORT Type ASC
> WHERE contains(file.folder, "arrival/")
> ```

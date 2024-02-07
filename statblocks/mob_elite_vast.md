---
statblock: yes
layout: Terra Campaigns Leiaute v04
template: Terra Campaigns 3-attribute NPC statblocks
source: Godbound

name: Mob Vast 48 HD
concept: Battalion of 500 elite soldiers (l3)
hp: '216'
hit_dice: 48d8
ac: '15'

debilitations: ~
resistances: ~
immunities: ~
senses: ~

stats:
- hard: '3'
- edge: '0'
- will: '3'
- move: '30'
- save: 16+
- effort: '1'

traits:
- name: Mob attack
  desc: When attacking, a mob can attack all the foes at range, with the number of attacks specified in the attack description.
main:
- name: Weapon attack (melee or ranged)
  desc: +4 x3, 7 (2d6) (shock 4/13, if melee)
on_turn:
- name: Overwhelm
  desc: "*Once per round*. One target makes a **Physical Save**, F: 35 (10d6) damage."
instant:
- name: ~
  desc: ~
---

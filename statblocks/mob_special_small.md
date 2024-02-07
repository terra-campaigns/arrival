---
statblock: yes
layout: Terra Campaigns Leiaute v04
template: Terra Campaigns 3-attribute NPC statblocks
source: Godbound

name: Mob Small 20 HD
concept: Platoon of 20 special creatures (l5)
hp: '90'
hit_dice: 20d8
ac: '15'

debilitations: ~
resistances: ~
immunities: ~
senses: ~

stats:
- hard: '4'
- edge: '2'
- will: '4'
- move: '35'
- save: 15+
- effort: '1'

traits:
- name: Mob attack
  desc: When attacking, a mob can attack all the foes at range, with the number of attacks specified in the attack description.
main:
- name: Weapon attack (melee or ranged)
  desc: +7 x1, 8 (2d6 + 1) (shock 5/13, if melee)
on_turn:
- name: Overwhelm
  desc: "*Once per round*. One target makes a **Physical Save**, F: 70 (20d6) damage."
instant:
- name: ~
  desc: ~
---

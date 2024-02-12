---
statblock: yes
layout: Terra Campaigns Leiaute v04
template: Terra Campaigns 3-attribute NPC statblocks
source: Godbound

name: Mob Small 12 HD
concept: Platoon of 20 trained soldiers (l1)
hp: '54'
hit_dice: 12d8
ac: '13'

debilitations: ~
resistances: ~
immunities: ~
senses: ~

stats:
- hard: '1'
- edge: '0'
- will: '1'
- move: '25'
- save: 16+
- effort: '0'

traits:
- name: Mob attack
  desc: When attacking, a mob can attack all the foes at range, with the number of attacks specified in the attack description.
main:
- name: Weapon attack (melee or ranged)
  desc: +2 x1, 5 (1d6 + 1) (shock 2/13, if melee)
on_turn:
- name: Overwhelm
  desc: "Once per round. One target makes a **Physical Save**, F: 21 (6d6) damage."
instant:
- name: ~
  desc: ~
---
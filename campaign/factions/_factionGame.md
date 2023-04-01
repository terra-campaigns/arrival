# Faction Game Log

```mermaid
%%{init: {'theme':'dark'}}%%
flowchart LR
    Nek --> Mystra
    Nek --> Bonnalurie
    Nek --> Falet
    Nek --> Kimbarak
    Nek --> ImprisionedChildren
    
    Mystra --> Rurkinar
    Mystra --> MystraTemple
    Rurkinar --> RurkinarCultists
    Rurkinar --> AngelHound
    
    Bonnalurie --> Acrisae
    Falet --> FaletChurch
    FaletChurch --> FFKA_Olivepia
    FFKA_Olivepia --> FFKA_East
	
	Kimbarak --> Kiranu
	Kimbarak --> Nargun
	Kiranu --> ParagonForce
	Nargun -.- ParagonForce
    
    Ulkrunnar --> Wuvurax
    Ulkrunnar --> Gronz
    Ulkrunnar --> Algath
    Ulkrunnar --> Merdijad
    
    Wuvurax --> Mondendovil
    Mondendovil --> Gellert
    Gellert --> Imotra
    Mondendovil --> GhostRiders
    
    %% Mercian influencing other factions
    Gellert -.- FFKA_East
    Mondendovil -.- ParagonForce
    GhostRiders -.- FFKA_East
	
	Gronz --> Velotnatherius
	Velotnatherius --> CannibalWolf
	Velotnatherius --> DrowKing
	DrowKing -.- ParagonForce
	
	Algath --> Curcharn
	Curcharn --> Aivridyt
	
	Merdijad --> Lorqiroth
	Merdijad --> SilkMaestro
	
	%% Silk influencing other factions
	SilkMaestro -.- FaletChurch
	
    subgraph Linhe
    Imotra
    Gellert
    FFKA_East
    RurkinarCultists
    AngelHound
    end
    
    subgraph Glasrath
    Aivridyt
    Nargun
    end
```
### Current State

```dataview
table without ID link(file.link, name) AS "Faction", tier AS "Tier", features AS "Features", trouble AS "Trouble", cohesion AS "Cohesion", dominion as "Dominion"
from "campaign/factions"
WHERE contains(type, "faction")=true
sort file.name asc
```


### 3877.5B

**Actions and updates**
- Glasrath
	- **INT Build strength**: 1d8 DC 4 to get 1 dominion. Outcome 5.
- Rurkinar
	- **INT Enact change**: spend 2 dominion to get the feature to communicate with Rurkinar, 1d8 DC 4 to get the feature. Outcome 8.
	- **Updates:**
		- Scene with the communication with Rurkinar and the new madness of the high shaman to happen in chapter.
		- The foil of the ritual should also create a new problem for the Rurkinar Cultists, maybe there is a big fight with the FFKA - to be detailed in chapter.
- FFKA East
	- **INT Build strength**: 1d8 DC 4 to get 1 dominion. Outcome 5.
	- **EXT Attack rival**: Foil Rurkinar's ritual by imposing military presence during the ritual and imprison the cultists' shaman, 1d8 vs 1d8. Outcome 8 x 5: a new problem is acquired for the Ruirkinar.
- Mercians
	- **INT Build strength**: 1d10 DC 4 to get 2 dominion. Outcome 7.

**Summary before actions**

| Faction   | Tier | Feat | Trouble | Cohesion | Dominion |
| --------- | ---- | ---- | ------- | -------- | -------- |
| FFKA East | 2    | 2    | 3       | 2        | 0        |
| Glasrath  | 2    | 2    | 3       | 2        | 2        |
| Mercians  | 3    | 4    | 3       | 3        | 10       |
| Rurkinar  | 2    | 1    | 3       | 2        | 2        |






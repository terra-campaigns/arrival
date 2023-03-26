

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

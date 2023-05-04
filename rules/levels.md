## Table of levels

``` r
levelTbl <- data.frame(xp = c(0, 300, 900, 2700, 6500, 14000, 23000, 34000, 48000,
                              64000, 85000, 100000, 120000, 140000, 165000, 195000,
                              225000, 265000, 305000, 355000),
                       level = 1:20,
                       tier = c(rep(1, 4), rep(2, 6), rep(3, 6), rep(4, 4))) %>% 
  mutate(rank = as.integer(round((level - 1) / 3)),
         xpPerChap = 200 * rank^2 + 500 * level - 500,
         xpPerChap = as.integer(pmax(xpPerChap, 300)),
         xpPerChapL = dplyr::lag(xpPerChap, default = 300),
         xpPerChapR = dplyr::lead(xpPerChap, default = 16700),
         xpPerChapL = (xpPerChap + xpPerChapL) / 2,
         xpPerChapR = (xpPerChap + xpPerChapR) / 2,
         xpPerChapBound = paste0('[', xpPerChapL, ', ', xpPerChapR, ']'),
         lvlUpXp = xp - lag(xp, default = first(xp)),
         lvlUpXp = lead(lvlUpXp, default = last(lvlUpXp)),
         chapToLevel = round(lvlUpXp / xpPerChap, 1),
         DCmin = as.integer(12 + rank),
         CRsolo = rank * 3 + tier + 1,
         CR1vs1 = round(CRsolo / 3 + (level - 8) * tier / 20, 1),
         CR2vs1 = round(CR1vs1 * 0.6 * 2, 1),
         CR4vs1 = round(CR1vs1 * 0.4 * 4, 1),
         consMgcItm = c(rep('3xA', 5), rep('2xB', 5), rep('2xC', 5),
                        rep('2xD', 3), rep('2xE', 2)),
         permMgcItem = c(rep('--', 2), rep('F', 5), '--', rep('G', 5),
                         rep('H', 3), '--', rep('Lgdry', 3))) %>%
  group_by(tier) %>%
  mutate(tierSum = pmax(1, 1.4 * cumsum(tier) / min(tier) - 0.5),
         hoardTreasure = round(tierSum / chapToLevel, 1)) %>%
  ungroup() %>%
  select(-tierSum, -lvlUpXp, -xpPerChapL, -xpPerChapR)

knitr::kable(levelTbl, format = 'pipe')
```

|     xp | level | tier | rank | xpPerChap | xpPerChapBound   | chapToLevel | DCmin | CRsolo | CR1vs1 | CR2vs1 | CR4vs1 | consMgcItm | permMgcItem | hoardTreasure |
|---:|---:|---:|---:|-----:|:-------|------:|---:|---:|---:|---:|---:|:-----|:------|------:|
|      0 |     1 |    1 |    0 |       300 | \[300, 400\]     |         1.0 |    12 |      2 |    0.3 |    0.4 |    0.5 | 3xA        | –           |           1.0 |
|    300 |     2 |    1 |    0 |       500 | \[400, 850\]     |         1.2 |    12 |      2 |    0.4 |    0.5 |    0.6 | 3xA        | –           |           1.9 |
|    900 |     3 |    1 |    1 |      1200 | \[850, 1450\]    |         1.5 |    13 |      5 |    1.4 |    1.7 |    2.2 | 3xA        | F           |           2.5 |
|   2700 |     4 |    1 |    1 |      1700 | \[1450, 1950\]   |         2.2 |    13 |      5 |    1.5 |    1.8 |    2.4 | 3xA        | F           |           2.3 |
|   6500 |     5 |    2 |    1 |      2200 | \[1950, 2750\]   |         3.4 |    13 |      6 |    1.7 |    2.0 |    2.7 | 3xA        | F           |           0.3 |
|  14000 |     6 |    2 |    2 |      3300 | \[2750, 3550\]   |         2.7 |    14 |      9 |    2.8 |    3.4 |    4.5 | 2xB        | F           |           0.9 |
|  23000 |     7 |    2 |    2 |      3800 | \[3550, 4050\]   |         2.9 |    14 |      9 |    2.9 |    3.5 |    4.6 | 2xB        | F           |           1.3 |
|  34000 |     8 |    2 |    2 |      4300 | \[4050, 5050\]   |         3.3 |    14 |      9 |    3.0 |    3.6 |    4.8 | 2xB        | –           |           1.5 |
|  48000 |     9 |    2 |    3 |      5800 | \[5050, 6050\]   |         2.8 |    15 |     12 |    4.1 |    4.9 |    6.6 | 2xB        | G           |           2.3 |
|  64000 |    10 |    2 |    3 |      6300 | \[6050, 6550\]   |         3.3 |    15 |     12 |    4.2 |    5.0 |    6.7 | 2xB        | G           |           2.4 |
|  85000 |    11 |    3 |    3 |      6800 | \[6550, 7750\]   |         2.2 |    15 |     13 |    4.8 |    5.8 |    7.7 | 2xC        | G           |           0.5 |
| 100000 |    12 |    3 |    4 |      8700 | \[7750, 8950\]   |         2.3 |    16 |     16 |    5.9 |    7.1 |    9.4 | 2xC        | G           |           1.0 |
| 120000 |    13 |    3 |    4 |      9200 | \[8950, 9450\]   |         2.2 |    16 |     16 |    6.1 |    7.3 |    9.8 | 2xC        | G           |           1.7 |
| 140000 |    14 |    3 |    4 |      9700 | \[9450, 10850\]  |         2.6 |    16 |     16 |    6.2 |    7.4 |    9.9 | 2xC        | H           |           2.0 |
| 165000 |    15 |    3 |    5 |     12000 | \[10850, 12250\] |         2.5 |    17 |     19 |    7.4 |    8.9 |   11.8 | 2xC        | H           |           2.6 |
| 195000 |    16 |    3 |    5 |     12500 | \[12250, 12750\] |         2.4 |    17 |     19 |    7.5 |    9.0 |   12.0 | 2xD        | H           |           3.3 |
| 225000 |    17 |    4 |    5 |     13000 | \[12750, 14350\] |         3.1 |    17 |     20 |    8.5 |   10.2 |   13.6 | 2xD        | –           |           0.3 |
| 265000 |    18 |    4 |    6 |     15700 | \[14350, 15950\] |         2.5 |    18 |     23 |    9.7 |   11.6 |   15.5 | 2xD        | Lgdry       |           0.9 |
| 305000 |    19 |    4 |    6 |     16200 | \[15950, 16450\] |         3.1 |    18 |     23 |    9.9 |   11.9 |   15.8 | 2xE        | Lgdry       |           1.2 |
| 355000 |    20 |    4 |    6 |     16700 | \[16450, 16700\] |         3.0 |    18 |     23 |   10.1 |   12.1 |   16.2 | 2xE        | Lgdry       |           1.7 |

Sessions per tier of play.

``` r
levelTblPerTier <- levelTbl %>%
  group_by(tier) %>%
  summarise(totSessions = round(sum(chapToLevel))) %>%
  mutate(ratioCampaign = round(totSessions / sum(totSessions), 2))

knitr::kable(levelTblPerTier, format = 'pipe')
```

| tier | totSessions | ratioCampaign |
|-----:|------------:|--------------:|
|    1 |           6 |          0.12 |
|    2 |          18 |          0.36 |
|    3 |          14 |          0.28 |
|    4 |          12 |          0.24 |

## PCs current development

Current PCs level and estimated deadly CR (lazy benchmark).

``` r
pcs <- data.frame(name = c('Miraak', 'Guilf', 'Dolman', 'Kethra', 'Amyria'),
                  level = c(5,        5,       5,        5,        4))

knitr::kable(pcs, format = 'pipe')
```

| name   | level |
|:-------|------:|
| Miraak |     5 |
| Guilf  |     5 |
| Dolman |     5 |
| Kethra |     5 |
| Amyria |     4 |

Current party average level, tier, estimated CR, minimal DC for checks,
treasures and

``` r
currentParty <- data.frame(level = as.integer(round(mean(pcs$level))),
                           members = nrow(pcs)) %>%
  left_join(levelTbl, by = 'level') %>%
  select(-xp, - chapToLevel) %>%
  mutate(tier = as.integer(tier),
         CRsolo = as.integer(CRsolo + members - 4),
         CR1vs1 = as.integer(round(CR1vs1 * members)),
         CR2vs1 = as.integer(round(CR2vs1 * members)),
         CR4vs1 = as.integer(round(CR4vs1 * members)))

cat(as.yaml(currentParty))
```

    ## level: 5
    ## members: 5
    ## tier: 2
    ## rank: 1
    ## xpPerChap: 2200
    ## xpPerChapBound: '[1950, 2750]'
    ## DCmin: 13
    ## CRsolo: 7
    ## CR1vs1: 8
    ## CR2vs1: 10
    ## CR4vs1: 14
    ## consMgcItm: 3xA
    ## permMgcItem: F
    ## hoardTreasure: 0.3

## Table of levels

``` r
intendedSessionsMult <- 1.4

levelTbl <- data.frame(xp = c(0, 300, 900, 2700, 6500, 14000, 23000, 34000,
                              48000, 64000, 85000, 100000, 120000, 140000,
                              165000, 195000, 225000, 265000, 305000, 355000),
                       level = 1:20,
                       tier = c(rep(1, 4), rep(2, 6), rep(3, 6), rep(4, 4))) %>% 
  mutate(rank = as.integer(round((level - 1) / 3)),
         xpPerChap = (200 * rank^2 + 500 * level - 500) / intendedSessionsMult,
         xpPerChap = as.integer(pmax(xpPerChap, 200)),
         xpPerChap = round(xpPerChap / 10) * 10,
         xpPerChapL = dplyr::lag(xpPerChap, default = 200),
         xpPerChapR = dplyr::lead(xpPerChap, default = 11930),
         xpPerChapL = (xpPerChap + xpPerChapL) / 2,
         xpPerChapL = round((xpPerChap + xpPerChapL) / 20) * 10,
         xpPerChapR = (xpPerChap + xpPerChapR) / 2,
         xpPerChapR = round((xpPerChap + xpPerChapR) / 20) * 10,
         xpPerChapBound = paste0('[', xpPerChapL, ', ', xpPerChapR, ']'),
         lvlUpXp = xp - lag(xp, default = first(xp)),
         lvlUpXp = lead(lvlUpXp, default = last(lvlUpXp)),
         chapToLevel = round(lvlUpXp / xpPerChap, 1),
         DCmin = as.integer(12 + rank),
         CRsolo = rank * 3 + tier + 1,
         CR1vs1 = round(CRsolo / 3 + (level - 8) * tier / 20, 1),
         CR2vs1 = round(CR1vs1 * 0.6 * 2, 1),
         CR4vs1 = round(CR1vs1 * 0.4 * 4, 1),
         consMgcItmQtd = c(rep(2, 4), 3, rep(2, 3), 1, 1, 2, 2,
                           rep(c(2, 2, 1), 2), 1, 2),
         consMgcItmTbl = c(rep('A', 5), rep('B', 5), rep('C', 5),
                           rep('D', 4), rep('E', 1)),
         permMgcItmTbl = c(rep('--', 2), rep(c(rep('F', 2), '--'), 2),
                           rep(c(rep('G', 2), '--'), 2), rep('H', 2),
                           '--', rep('Lgdry', 2), '--')) %>%
  group_by(tier) %>%
  mutate(tierSum = pmax(1, 1.4 * cumsum(tier) / min(tier) - 0.5),
         hoardTreasure = round(tierSum / chapToLevel,  1)) %>%
  ungroup() %>%
  select(-tierSum, -lvlUpXp, -xpPerChapL, -xpPerChapR)

knitr::kable(levelTbl, format = 'pipe')
```

|     xp | level | tier | rank | xpPerChap | xpPerChapBound   | chapToLevel | DCmin | CRsolo | CR1vs1 | CR2vs1 | CR4vs1 | consMgcItmQtd | consMgcItmTbl | permMgcItmTbl | hoardTreasure |
|---:|---:|--:|--:|----:|:------|-----:|---:|---:|---:|---:|---:|------:|:------|:------|------:|
|      0 |     1 |    1 |    0 |       200 | \[200, 240\]     |         1.5 |    12 |      2 |    0.3 |    0.4 |    0.5 |             2 | A             | –             |           0.7 |
|    300 |     2 |    1 |    0 |       360 | \[320, 480\]     |         1.7 |    12 |      2 |    0.4 |    0.5 |    0.6 |             2 | A             | –             |           1.4 |
|    900 |     3 |    1 |    1 |       860 | \[740, 950\]     |         2.1 |    13 |      5 |    1.4 |    1.7 |    2.2 |             2 | A             | F             |           1.8 |
|   2700 |     4 |    1 |    1 |      1210 | \[1120, 1300\]   |         3.1 |    13 |      5 |    1.5 |    1.8 |    2.4 |             2 | A             | F             |           1.6 |
|   6500 |     5 |    2 |    1 |      1570 | \[1480, 1770\]   |         4.8 |    13 |      6 |    1.7 |    2.0 |    2.7 |             3 | A             | –             |           0.2 |
|  14000 |     6 |    2 |    2 |      2360 | \[2160, 2450\]   |         3.8 |    14 |      9 |    2.8 |    3.4 |    4.5 |             2 | B             | F             |           0.6 |
|  23000 |     7 |    2 |    2 |      2710 | \[2620, 2800\]   |         4.1 |    14 |      9 |    2.9 |    3.5 |    4.6 |             2 | B             | F             |           0.9 |
|  34000 |     8 |    2 |    2 |      3070 | \[2980, 3340\]   |         4.6 |    14 |      9 |    3.0 |    3.6 |    4.8 |             2 | B             | –             |           1.1 |
|  48000 |     9 |    2 |    3 |      4140 | \[3870, 4230\]   |         3.9 |    15 |     12 |    4.1 |    4.9 |    6.6 |             1 | B             | G             |           1.7 |
|  64000 |    10 |    2 |    3 |      4500 | \[4410, 4590\]   |         4.7 |    15 |     12 |    4.2 |    5.0 |    6.7 |             1 | B             | G             |           1.7 |
|  85000 |    11 |    3 |    3 |      4860 | \[4770, 5200\]   |         3.1 |    15 |     13 |    4.8 |    5.8 |    7.7 |             2 | C             | –             |           0.3 |
| 100000 |    12 |    3 |    4 |      6210 | \[5870, 6300\]   |         3.2 |    16 |     16 |    5.9 |    7.1 |    9.4 |             2 | C             | G             |           0.7 |
| 120000 |    13 |    3 |    4 |      6570 | \[6480, 6660\]   |         3.0 |    16 |     16 |    6.1 |    7.3 |    9.8 |             2 | C             | G             |           1.2 |
| 140000 |    14 |    3 |    4 |      6930 | \[6840, 7340\]   |         3.6 |    16 |     16 |    6.2 |    7.4 |    9.9 |             2 | C             | –             |           1.4 |
| 165000 |    15 |    3 |    5 |      8570 | \[8160, 8660\]   |         3.5 |    17 |     19 |    7.4 |    8.9 |   11.8 |             1 | C             | H             |           1.9 |
| 195000 |    16 |    3 |    5 |      8930 | \[8840, 9020\]   |         3.4 |    17 |     19 |    7.5 |    9.0 |   12.0 |             2 | D             | H             |           2.3 |
| 225000 |    17 |    4 |    5 |      9280 | \[9190, 9760\]   |         4.3 |    17 |     20 |    8.5 |   10.2 |   13.6 |             2 | D             | –             |           0.2 |
| 265000 |    18 |    4 |    6 |     11210 | \[10730, 11300\] |         3.6 |    18 |     23 |    9.7 |   11.6 |   15.5 |             1 | D             | Lgdry         |           0.6 |
| 305000 |    19 |    4 |    6 |     11570 | \[11480, 11660\] |         4.3 |    18 |     23 |    9.9 |   11.9 |   15.8 |             1 | D             | Lgdry         |           0.9 |
| 355000 |    20 |    4 |    6 |     11930 | \[11840, 11930\] |         4.2 |    18 |     23 |   10.1 |   12.1 |   16.2 |             2 | E             | –             |           1.2 |

Sessions per tier and rank of play.

``` r
levelTblPerTier <- levelTbl %>%
  group_by(tier) %>%
  summarise(totSessions = round(sum(chapToLevel))) %>%
  mutate(ratioCampaign = round(totSessions / sum(totSessions), 2))

knitr::kable(levelTblPerTier, format = 'pipe')
```

| tier | totSessions | ratioCampaign |
|-----:|------------:|--------------:|
|    1 |           8 |          0.11 |
|    2 |          26 |          0.37 |
|    3 |          20 |          0.29 |
|    4 |          16 |          0.23 |

``` r
levelTblPerRank <- levelTbl %>%
  group_by(rank) %>%
  summarise(totSessions = round(sum(chapToLevel))) %>%
  mutate(ratioCampaign = round(totSessions / sum(totSessions), 2))

knitr::kable(levelTblPerRank, format = 'pipe')
```

| rank | totSessions | ratioCampaign |
|-----:|------------:|--------------:|
|    0 |           3 |          0.04 |
|    1 |          10 |          0.14 |
|    2 |          12 |          0.17 |
|    3 |          12 |          0.17 |
|    4 |          10 |          0.14 |
|    5 |          11 |          0.16 |
|    6 |          12 |          0.17 |

Magic items number aligned with DMG stats (evaluated
[here](https://www.enworld.org/threads/analysis-of-typical-magic-item-distribution.395770/)).

For a party of 5, the goal is:

**Permanent** - F: 10-15 between levels 3 and 7 - G: 10-15 between
levels 9 and 13 - H: 5-8 between levels 15 and 16 - Lgdry: 5-8 between
levels 18 and 19

**Consumable** - A: 25-35 between levels 1 and 5 - B: 25-35 between
levels 6 and 10 - C: 25-35 between levels 11 and 15 - D: 20-30 between
levels 16 and 19 - E: 5-8 in level 20

``` r
levelTblMagicItemsP <- levelTbl %>%
  group_by(permMgcItmTbl) %>%
  summarise(totItems = sum(chapToLevel)) %>%
  filter(permMgcItmTbl != '--')

levelTblMagicItemsC <- levelTbl %>%
  mutate(totItems = consMgcItmQtd * chapToLevel) %>%
  group_by(consMgcItmTbl) %>%
  summarise(totItems = sum(totItems))


knitr::kable(levelTblMagicItemsP, format = 'pipe')
```

| permMgcItmTbl | totItems |
|:--------------|---------:|
| F             |     13.1 |
| G             |     14.8 |
| H             |      6.9 |
| Lgdry         |      7.9 |

``` r
knitr::kable(levelTblMagicItemsC, format = 'pipe')
```

| consMgcItmTbl | totItems |
|:--------------|---------:|
| A             |     31.2 |
| B             |     33.6 |
| C             |     29.3 |
| D             |     23.3 |
| E             |      8.4 |

## PCs current development

Current PCs level and estimated session.

``` r
pcs <- data.frame(name = c('Miraak', 'Guilf', 'Dolman', 'Kethra', 'Amyria'),
                  level = c(6,        5,       6,        6,        5))

challengeRank <- 1

currentParty <- data.frame(level = mean(pcs$level),
                           members = nrow(pcs),
                           hexRank = as.integer(challengeRank)) %>%
  mutate(hexXP = as.integer(2000 * hexRank ^ 2),
         hexXPperPC = as.integer(hexXP / members),
         lvlXPperPC = as.integer(200 * level),
         xp = hexXPperPC + lvlXPperPC)

cat(as.yaml(currentParty))
```

    ## level: 5.6
    ## members: 5
    ## hexRank: 1
    ## hexXP: 2000
    ## hexXPperPC: 400
    ## lvlXPperPC: 1120
    ## xp: 1520

``` r
hexLevels <- data.frame(level = 1:20,
                           members = 5) %>%
  left_join(levelTbl, by = 'level') %>%
  filter(level %in% c(0:6 * 3 + 1)) %>%
  select(rank, members, CRsolo, CR1vs1, CR2vs1, CR4vs1) %>%
  mutate(CRsolo = as.integer(CRsolo + members - 4),
         CR1vs1 = as.integer(round(CR1vs1 * members)),
         CR2vs1 = as.integer(round(CR2vs1 * members)),
         CR4vs1 = as.integer(round(CR4vs1 * members)),
         cr_gauges = paste0('[', CRsolo, ', ', CR1vs1, ', ',
                            CR2vs1, ', ', CR4vs1, ']')) %>%
  select(-CRsolo, -CR1vs1, -CR2vs1, -CR4vs1, -members) %>%
  mutate(partyXPsession = 2000 * rank ^ 2)

knitr::kable(hexLevels, format = 'pipe')
```

| rank | cr_gauges          | partyXPsession |
|-----:|:-------------------|---------------:|
|    0 | \[3, 2, 2, 2\]     |              0 |
|    1 | \[6, 8, 9, 12\]    |           2000 |
|    2 | \[10, 14, 18, 23\] |           8000 |
|    3 | \[13, 21, 25, 34\] |          18000 |
|    4 | \[17, 30, 36, 49\] |          32000 |
|    5 | \[20, 38, 45, 60\] |          50000 |
|    6 | \[24, 50, 60, 79\] |          72000 |

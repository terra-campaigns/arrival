type: rule
application: levels 
tags: 
---

## Table of levels

``` r
levelTbl <- data.frame(xp = c(0, 300, 900, 2700, 6500, 14000, 23000, 34000, 48000,
                  64000, 85000, 100000, 120000, 140000, 165000, 195000,
                  225000, 265000, 305000, 355000),
           level = 1:20,
           tier = c(rep(1, 4), rep(2, 6), rep(3, 6), rep(4, 4))) %>% 
  mutate(xpPerChap = 393 * tier^2 + 434 * level - 800,
         xpPerChap = pmax(xpPerChap, 300),
         lvlUpXp = xp - lag(xp, default = first(xp)),
         lvlUpXp = lead(lvlUpXp, default = last(lvlUpXp)),
         chapToLevel = round(lvlUpXp / xpPerChap, 1),
         campComplete = round(cumsum(chapToLevel) / sum(chapToLevel),2),
         easyDC = round(level/2.2 + 10, 0),
         consMgcItm = c(rep('3xA', 5), rep('2xB', 5), rep('2xC', 5),
                        rep('2xD', 4), '2xE'),
         permMgcItem = c(rep(c('--', 'F'), 3), 'F', rep(c('--', 'G'), 3),
                         '--', 'H', 'H', rep(c('--', 'Lgdry'), 2))) %>%
  group_by(tier) %>%
  mutate(tierSum = pmax(1, 1.4 * cumsum(tier) / min(tier) - 0.5),
         hoardTreasure = round(tierSum / chapToLevel, 1)) %>%
  ungroup() %>%
  select(-tierSum)

knitr::kable(levelTbl, format = 'pipe')
```

|     xp | level | tier | xpPerChap | lvlUpXp | chapToLevel | campComplete | easyDC | consMgcItm | permMgcItem | hoardTreasure |
|-----:|----:|---:|------:|-----:|-------:|--------:|-----:|:-------|:-------|---------:|
|      0 |     1 |    1 |       300 |     300 |         1.0 |         0.02 |     10 | 3xA        | –           |           1.0 |
|    300 |     2 |    1 |       461 |     600 |         1.3 |         0.04 |     11 | 3xA        | F           |           1.8 |
|    900 |     3 |    1 |       895 |    1800 |         2.0 |         0.08 |     11 | 3xA        | –           |           1.8 |
|   2700 |     4 |    1 |      1329 |    3800 |         2.9 |         0.13 |     12 | 3xA        | F           |           1.8 |
|   6500 |     5 |    2 |      2942 |    7500 |         2.5 |         0.18 |     12 | 3xA        | –           |           0.4 |
|  14000 |     6 |    2 |      3376 |    9000 |         2.7 |         0.22 |     13 | 2xB        | F           |           0.9 |
|  23000 |     7 |    2 |      3810 |   11000 |         2.9 |         0.28 |     13 | 2xB        | F           |           1.3 |
|  34000 |     8 |    2 |      4244 |   14000 |         3.3 |         0.34 |     14 | 2xB        | –           |           1.5 |
|  48000 |     9 |    2 |      4678 |   16000 |         3.4 |         0.40 |     14 | 2xB        | G           |           1.9 |
|  64000 |    10 |    2 |      5112 |   21000 |         4.1 |         0.47 |     15 | 2xB        | –           |           1.9 |
|  85000 |    11 |    3 |      7511 |   15000 |         2.0 |         0.51 |     15 | 2xC        | G           |           0.5 |
| 100000 |    12 |    3 |      7945 |   20000 |         2.5 |         0.55 |     15 | 2xC        | –           |           0.9 |
| 120000 |    13 |    3 |      8379 |   20000 |         2.4 |         0.60 |     16 | 2xC        | G           |           1.5 |
| 140000 |    14 |    3 |      8813 |   25000 |         2.8 |         0.65 |     16 | 2xC        | –           |           1.8 |
| 165000 |    15 |    3 |      9247 |   30000 |         3.2 |         0.71 |     17 | 2xC        | H           |           2.0 |
| 195000 |    16 |    3 |      9681 |   30000 |         3.1 |         0.76 |     17 | 2xD        | H           |           2.5 |
| 225000 |    17 |    4 |     12866 |   40000 |         3.1 |         0.82 |     18 | 2xD        | –           |           0.3 |
| 265000 |    18 |    4 |     13300 |   40000 |         3.0 |         0.87 |     18 | 2xD        | Lgdry       |           0.8 |
| 305000 |    19 |    4 |     13734 |   50000 |         3.6 |         0.94 |     19 | 2xD        | –           |           1.0 |
| 355000 |    20 |    4 |     14168 |   50000 |         3.5 |         1.00 |     19 | 2xE        | Lgdry       |           1.5 |

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
|    1 |           7 |          0.13 |
|    2 |          19 |          0.35 |
|    3 |          16 |          0.29 |
|    4 |          13 |          0.24 |

## PCs current development

Current PCs level and estimated deadly CR (lazy benchmark).

``` r
pcs <- data.frame(name = c('Miraak', 'Guilf', 'Dolman', 'Kethra', 'Amyria'),
                  level = c(5,        5,       5,        5,        4)) %>%
  mutate(cr = ifelse(level < 5, level/4, level/2))

knitr::kable(pcs, format = 'pipe')
```

| name   | level |  cr |
|:-------|------:|----:|
| Miraak |     5 | 2.5 |
| Guilf  |     5 | 2.5 |
| Dolman |     5 | 2.5 |
| Kethra |     5 | 2.5 |
| Amyria |     4 | 1.0 |

Current group average level, tier, estimated deadly CR, modified DC for
easy checks, treasure and boss lair probability.

``` r
levelAvg <- mean(pcs$level)
tierGroup <- levelTbl$tier[round(levelAvg * 1.1, 0) == levelTbl$level]
crDealdy <- sum(pcs$cr)
easyDC <- round(levelAvg/2.2 + 10, 0)
hoardTreasure <- levelTbl$hoardTreasure[levelTbl$level == round(levelAvg)]
consMgcItem <- levelTbl$consMgcItm[levelTbl$level == round(levelAvg)]
permMgcItem <- levelTbl$permMgcItem[levelTbl$level == round(levelAvg)]

currGrp <- data.frame(PartyVariable = c(
  'Level', 'Tier', 'Deadly CR', 'Easy DC', 'Hoard Treasure (of correct tier)',
  'Consumable Magic Items', 'Single Permanent Magic Item'
),
Value = c(
  round(levelAvg), tierGroup, crDealdy, easyDC, hoardTreasure,
  consMgcItem, permMgcItem
))

knitr::kable(currGrp, format = 'pipe')
```

| PartyVariable                    | Value |
|:---------------------------------|:------|
| Level                            | 5     |
| Tier                             | 2     |
| Deadly CR                        | 11    |
| Easy DC                          | 12    |
| Hoard Treasure (of correct tier) | 0.4   |
| Consumable Magic Items           | 3xA   |
| Single Permanent Magic Item      | –     |

Current group proposed XP per chapter.

``` r
xpAltTbl <- data.frame(levelAlt = seq(from = levelAvg - 0.6,
                                      to = levelAvg + 0.6, by = 0.2),
                       tierAlt = seq(from = tierGroup - 0.9,
                                     to = tierGroup + 0.9, by = 0.3)) %>%
  mutate(xpPerChapAlt = 393 * tierAlt^2 + 434 * levelAlt - 800,
         xpPerChapAlt = round(xpPerChapAlt / 100, 0) * 100,
         xpPerChapAlt = pmax(xpPerChapAlt, 300))

knitr::kable(xpAltTbl, format = 'pipe')
```

| levelAlt | tierAlt | xpPerChapAlt |
|---------:|--------:|-------------:|
|      4.2 |     1.1 |         1500 |
|      4.4 |     1.4 |         1900 |
|      4.6 |     1.7 |         2300 |
|      4.8 |     2.0 |         2900 |
|      5.0 |     2.3 |         3400 |
|      5.2 |     2.6 |         4100 |
|      5.4 |     2.9 |         4800 |

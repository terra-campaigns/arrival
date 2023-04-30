## Table of levels

``` r
levelTbl <- data.frame(xp = c(0, 300, 900, 2700, 6500, 14000, 23000, 34000, 48000,
                              64000, 85000, 100000, 120000, 140000, 165000, 195000,
                              225000, 265000, 305000, 355000),
                       level = 1:20,
                       tier = c(rep(1, 4), rep(2, 6), rep(3, 6), rep(4, 4))) %>% 
  mutate(rank = round((level - 1) / 3),
         xpPerChap = 200 * rank^2 + 500 * level - 500,
         xpPerChap = pmax(xpPerChap, 300),
         lvlUpXp = xp - lag(xp, default = first(xp)),
         lvlUpXp = lead(lvlUpXp, default = last(lvlUpXp)),
         chapToLevel = round(lvlUpXp / xpPerChap, 1),
         campComplete = round(cumsum(chapToLevel) / sum(chapToLevel),2),
         CR5e = (rank * 3 + 1) / 4,
         CRlazy = ifelse(level < 5, level / 4, level / 2),
         minDC = 12 + rank,
         consMgcItm = c(rep('3xA', 5), rep('2xB', 5), rep('2xC', 5),
                        rep('2xD', 4), '2xE'),
         permMgcItem = c(rep(c('--', 'F'), 3), 'F', rep(c('--', 'G'), 3),
                         '--', 'H', 'H', rep(c('--', 'Lgdry'), 2))) %>%
  group_by(tier) %>%
  mutate(tierSum = pmax(1, 1.4 * cumsum(tier) / min(tier) - 0.5),
         hoardTreasure = round(tierSum / chapToLevel, 1)) %>%
  ungroup() %>%
  select(-tierSum, -lvlUpXp)

knitr::kable(levelTbl, format = 'pipe')
```

|     xp | level | tier | rank | xpPerChap | chapToLevel | campComplete | CR5e | CRlazy | minDC | consMgcItm | permMgcItem | hoardTreasure |
|----:|----:|---:|---:|------:|-------:|-------:|---:|----:|----:|:------|:-------|--------:|
|      0 |     1 |    1 |    0 |       300 |         1.0 |         0.02 | 0.25 |   0.25 |    12 | 3xA        | –           |           1.0 |
|    300 |     2 |    1 |    0 |       500 |         1.2 |         0.04 | 0.25 |   0.50 |    12 | 3xA        | F           |           1.9 |
|    900 |     3 |    1 |    1 |      1200 |         1.5 |         0.07 | 1.00 |   0.75 |    13 | 3xA        | –           |           2.5 |
|   2700 |     4 |    1 |    1 |      1700 |         2.2 |         0.12 | 1.00 |   1.00 |    13 | 3xA        | F           |           2.3 |
|   6500 |     5 |    2 |    1 |      2200 |         3.4 |         0.19 | 1.00 |   2.50 |    13 | 3xA        | –           |           0.3 |
|  14000 |     6 |    2 |    2 |      3300 |         2.7 |         0.24 | 1.75 |   3.00 |    14 | 2xB        | F           |           0.9 |
|  23000 |     7 |    2 |    2 |      3800 |         2.9 |         0.30 | 1.75 |   3.50 |    14 | 2xB        | F           |           1.3 |
|  34000 |     8 |    2 |    2 |      4300 |         3.3 |         0.36 | 1.75 |   4.00 |    14 | 2xB        | –           |           1.5 |
|  48000 |     9 |    2 |    3 |      5800 |         2.8 |         0.42 | 2.50 |   4.50 |    15 | 2xB        | G           |           2.3 |
|  64000 |    10 |    2 |    3 |      6300 |         3.3 |         0.48 | 2.50 |   5.00 |    15 | 2xB        | –           |           2.4 |
|  85000 |    11 |    3 |    3 |      6800 |         2.2 |         0.53 | 2.50 |   5.50 |    15 | 2xC        | G           |           0.5 |
| 100000 |    12 |    3 |    4 |      8700 |         2.3 |         0.57 | 3.25 |   6.00 |    16 | 2xC        | –           |           1.0 |
| 120000 |    13 |    3 |    4 |      9200 |         2.2 |         0.62 | 3.25 |   6.50 |    16 | 2xC        | G           |           1.7 |
| 140000 |    14 |    3 |    4 |      9700 |         2.6 |         0.67 | 3.25 |   7.00 |    16 | 2xC        | –           |           2.0 |
| 165000 |    15 |    3 |    5 |     12000 |         2.5 |         0.72 | 4.00 |   7.50 |    17 | 2xC        | H           |           2.6 |
| 195000 |    16 |    3 |    5 |     12500 |         2.4 |         0.77 | 4.00 |   8.00 |    17 | 2xD        | H           |           3.3 |
| 225000 |    17 |    4 |    5 |     13000 |         3.1 |         0.83 | 4.00 |   8.50 |    17 | 2xD        | –           |           0.3 |
| 265000 |    18 |    4 |    6 |     15700 |         2.5 |         0.88 | 4.75 |   9.00 |    18 | 2xD        | Lgdry       |           0.9 |
| 305000 |    19 |    4 |    6 |     16200 |         3.1 |         0.94 | 4.75 |   9.50 |    18 | 2xD        | –           |           1.2 |
| 355000 |    20 |    4 |    6 |     16700 |         3.0 |         1.00 | 4.75 |  10.00 |    18 | 2xE        | Lgdry       |           1.7 |

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
| Hoard Treasure (of correct tier) | 0.3   |
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

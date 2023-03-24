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
         easyDC = round(level/2.2 + 10, 0))

knitr::kable(levelTbl, format = 'pipe')
```

|     xp | level | tier | xpPerChap | lvlUpXp | chapToLevel | easyDC |
|-------:|------:|-----:|----------:|--------:|------------:|-------:|
|      0 |     1 |    1 |       300 |     300 |         1.0 |     10 |
|    300 |     2 |    1 |       461 |     600 |         1.3 |     11 |
|    900 |     3 |    1 |       895 |    1800 |         2.0 |     11 |
|   2700 |     4 |    1 |      1329 |    3800 |         2.9 |     12 |
|   6500 |     5 |    2 |      2942 |    7500 |         2.5 |     12 |
|  14000 |     6 |    2 |      3376 |    9000 |         2.7 |     13 |
|  23000 |     7 |    2 |      3810 |   11000 |         2.9 |     13 |
|  34000 |     8 |    2 |      4244 |   14000 |         3.3 |     14 |
|  48000 |     9 |    2 |      4678 |   16000 |         3.4 |     14 |
|  64000 |    10 |    2 |      5112 |   21000 |         4.1 |     15 |
|  85000 |    11 |    3 |      7511 |   15000 |         2.0 |     15 |
| 100000 |    12 |    3 |      7945 |   20000 |         2.5 |     15 |
| 120000 |    13 |    3 |      8379 |   20000 |         2.4 |     16 |
| 140000 |    14 |    3 |      8813 |   25000 |         2.8 |     16 |
| 165000 |    15 |    3 |      9247 |   30000 |         3.2 |     17 |
| 195000 |    16 |    3 |      9681 |   30000 |         3.1 |     17 |
| 225000 |    17 |    4 |     12866 |   40000 |         3.1 |     18 |
| 265000 |    18 |    4 |     13300 |   40000 |         3.0 |     18 |
| 305000 |    19 |    4 |     13734 |   50000 |         3.6 |     19 |
| 355000 |    20 |    4 |     14168 |   50000 |         3.5 |     19 |

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

Current group average level, tier, estimated deadly CR and modified DC
for easy checks.

``` r
levelAvg <- mean(pcs$level)
tierGroup <- levelTbl$tier[round(levelAvg * 1.1, 0) == levelTbl$level]
crDealdy <- sum(pcs$cr)
easyDC <- round(levelAvg/2.2 + 10, 0)

currGrp <- data.frame(PartyVariable = c('Level', 'Tier', 'Deadly CR', 'Easy DC'),
           Value = round(c(levelAvg, tierGroup, crDealdy, easyDC), 0))

knitr::kable(currGrp, format = 'pipe')
```

| PartyVariable | Value |
|:--------------|------:|
| Level         |     5 |
| Tier          |     2 |
| Deadly CR     |    11 |
| Easy DC       |    12 |

Current group proposed XP per chapter.

``` r
xpAltTbl <- data.frame(levelAlt = seq(from = levelAvg - 0.6,
                                      to = levelAvg + 0.6, by = 0.2),
                       tierAlt = seq(from = tierGroup - 0.3,
                                     to = tierGroup + 0.3, by = 0.1)) %>%
  mutate(xpPerChapAlt = 393 * tierAlt^2 + 434 * levelAlt - 800,
         xpPerChapAlt = round(xpPerChapAlt / 100, 0) * 100,
         xpPerChapAlt = pmax(xpPerChapAlt, 300))

knitr::kable(xpAltTbl, format = 'pipe')
```

| levelAlt | tierAlt | xpPerChapAlt |
|---------:|--------:|-------------:|
|      4.2 |     1.7 |         2200 |
|      4.4 |     1.8 |         2400 |
|      4.6 |     1.9 |         2600 |
|      4.8 |     2.0 |         2900 |
|      5.0 |     2.1 |         3100 |
|      5.2 |     2.2 |         3400 |
|      5.4 |     2.3 |         3600 |

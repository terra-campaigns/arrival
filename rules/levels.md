## Table of levels

[Google Drive
Link](https://docs.google.com/spreadsheets/d/1B9a7m8iBmsvPW8n7CQp91mwxGswfDrnrYzauqcntQKA/edit#gid=1672913206)

``` r
hexLevels <- data.frame(rank = 0:8) %>%
  mutate(hdGauge = pmax(4, rank * 10),
         missionPP = rank * 3 + 1,
         missionBasePayKc = missionPP * 4)

knitr::kable(hexLevels, format = 'pipe')
```

| rank | hdGauge | missionPP | missionBasePayKc |
|-----:|--------:|----------:|-----------------:|
|    0 |       4 |         1 |                4 |
|    1 |      10 |         4 |               16 |
|    2 |      20 |         7 |               28 |
|    3 |      30 |        10 |               40 |
|    4 |      40 |        13 |               52 |
|    5 |      50 |        16 |               64 |
|    6 |      60 |        19 |               76 |
|    7 |      70 |        22 |               88 |
|    8 |      80 |        25 |              100 |

## Table of levels (original 5e)

``` r
intendedSessionsMult <- 1

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
         DCmin = as.integer(12 + rank)) %>%
  select(-lvlUpXp, -xpPerChapL, -xpPerChapR)

knitr::kable(levelTbl, format = 'pipe')
```

|     xp | level | tier | rank | xpPerChap | xpPerChapBound   | chapToLevel | DCmin |
|-------:|------:|-----:|-----:|----------:|:-----------------|------------:|------:|
|      0 |     1 |    1 |    0 |       200 | \[200, 280\]     |         1.5 |    12 |
|    300 |     2 |    1 |    0 |       500 | \[420, 680\]     |         1.2 |    12 |
|    900 |     3 |    1 |    1 |      1200 | \[1020, 1320\]   |         1.5 |    13 |
|   2700 |     4 |    1 |    1 |      1700 | \[1580, 1820\]   |         2.2 |    13 |
|   6500 |     5 |    2 |    1 |      2200 | \[2080, 2480\]   |         3.4 |    13 |
|  14000 |     6 |    2 |    2 |      3300 | \[3020, 3420\]   |         2.7 |    14 |
|  23000 |     7 |    2 |    2 |      3800 | \[3680, 3920\]   |         2.9 |    14 |
|  34000 |     8 |    2 |    2 |      4300 | \[4180, 4680\]   |         3.3 |    14 |
|  48000 |     9 |    2 |    3 |      5800 | \[5420, 5920\]   |         2.8 |    15 |
|  64000 |    10 |    2 |    3 |      6300 | \[6180, 6420\]   |         3.3 |    15 |
|  85000 |    11 |    3 |    3 |      6800 | \[6680, 7280\]   |         2.2 |    15 |
| 100000 |    12 |    3 |    4 |      8700 | \[8220, 8820\]   |         2.3 |    16 |
| 120000 |    13 |    3 |    4 |      9200 | \[9080, 9320\]   |         2.2 |    16 |
| 140000 |    14 |    3 |    4 |      9700 | \[9580, 10280\]  |         2.6 |    16 |
| 165000 |    15 |    3 |    5 |     12000 | \[11420, 12120\] |         2.5 |    17 |
| 195000 |    16 |    3 |    5 |     12500 | \[12380, 12620\] |         2.4 |    17 |
| 225000 |    17 |    4 |    5 |     13000 | \[12880, 13680\] |         3.1 |    17 |
| 265000 |    18 |    4 |    6 |     15700 | \[15020, 15820\] |         2.5 |    18 |
| 305000 |    19 |    4 |    6 |     16200 | \[16080, 16320\] |         3.1 |    18 |
| 355000 |    20 |    4 |    6 |     16700 | \[16580, 15510\] |         3.0 |    18 |

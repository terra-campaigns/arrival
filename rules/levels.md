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
intendedSessionsMult <- 0.75

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
|      0 |     1 |    1 |    0 |       200 | \[200, 320\]     |         1.5 |    12 |
|    300 |     2 |    1 |    0 |       670 | \[550, 900\]     |         0.9 |    12 |
|    900 |     3 |    1 |    1 |      1600 | \[1370, 1770\]   |         1.1 |    13 |
|   2700 |     4 |    1 |    1 |      2270 | \[2100, 2440\]   |         1.7 |    13 |
|   6500 |     5 |    2 |    1 |      2930 | \[2760, 3300\]   |         2.6 |    13 |
|  14000 |     6 |    2 |    2 |      4400 | \[4030, 4570\]   |         2.0 |    14 |
|  23000 |     7 |    2 |    2 |      5070 | \[4900, 5240\]   |         2.2 |    14 |
|  34000 |     8 |    2 |    2 |      5730 | \[5560, 6230\]   |         2.4 |    14 |
|  48000 |     9 |    2 |    3 |      7730 | \[7230, 7900\]   |         2.1 |    15 |
|  64000 |    10 |    2 |    3 |      8400 | \[8230, 8570\]   |         2.5 |    15 |
|  85000 |    11 |    3 |    3 |      9070 | \[8900, 9700\]   |         1.7 |    15 |
| 100000 |    12 |    3 |    4 |     11600 | \[10970, 11770\] |         1.7 |    16 |
| 120000 |    13 |    3 |    4 |     12270 | \[12100, 12440\] |         1.6 |    16 |
| 140000 |    14 |    3 |    4 |     12930 | \[12760, 13700\] |         1.9 |    16 |
| 165000 |    15 |    3 |    5 |     16000 | \[15230, 16170\] |         1.9 |    17 |
| 195000 |    16 |    3 |    5 |     16670 | \[16500, 16840\] |         1.8 |    17 |
| 225000 |    17 |    4 |    5 |     17330 | \[17160, 18230\] |         2.3 |    17 |
| 265000 |    18 |    4 |    6 |     20930 | \[20030, 21100\] |         1.9 |    18 |
| 305000 |    19 |    4 |    6 |     21600 | \[21430, 21770\] |         2.3 |    18 |
| 355000 |    20 |    4 |    6 |     22270 | \[22100, 19680\] |         2.2 |    18 |

``` r
hexLevels <- data.frame(rank = 0:8) %>%
  mutate(hdGauge = pmax(4, rank * 10),
         partyXPsessionPerHour = round(1000 * rank) + 100,
         DCmin = as.integer(11 + rank * 1.5))

knitr::kable(hexLevels, format = 'pipe')
```

| rank | hdGauge | partyXPsessionPerHour | DCmin |
|-----:|--------:|----------------------:|------:|
|    0 |       4 |                   100 |    11 |
|    1 |      10 |                  1100 |    12 |
|    2 |      20 |                  2100 |    14 |
|    3 |      30 |                  3100 |    15 |
|    4 |      40 |                  4100 |    17 |
|    5 |      50 |                  5100 |    18 |
|    6 |      60 |                  6100 |    20 |
|    7 |      70 |                  7100 |    21 |
|    8 |      80 |                  8100 |    23 |

## Table of levels (deprecated)

``` r
intendedSessionsMult <- 0.65

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
|      0 |     1 |    1 |    0 |       200 | \[200, 340\]     |         1.5 |    12 |
|    300 |     2 |    1 |    0 |       770 | \[630, 1040\]    |         0.8 |    12 |
|    900 |     3 |    1 |    1 |      1850 | \[1580, 2040\]   |         1.0 |    13 |
|   2700 |     4 |    1 |    1 |      2620 | \[2430, 2810\]   |         1.5 |    13 |
|   6500 |     5 |    2 |    1 |      3380 | \[3190, 3800\]   |         2.2 |    13 |
|  14000 |     6 |    2 |    2 |      5080 | \[4660, 5270\]   |         1.8 |    14 |
|  23000 |     7 |    2 |    2 |      5850 | \[5660, 6040\]   |         1.9 |    14 |
|  34000 |     8 |    2 |    2 |      6620 | \[6430, 7200\]   |         2.1 |    14 |
|  48000 |     9 |    2 |    3 |      8920 | \[8340, 9110\]   |         1.8 |    15 |
|  64000 |    10 |    2 |    3 |      9690 | \[9500, 9880\]   |         2.2 |    15 |
|  85000 |    11 |    3 |    3 |     10460 | \[10270, 11190\] |         1.4 |    15 |
| 100000 |    12 |    3 |    4 |     13380 | \[12650, 13570\] |         1.5 |    16 |
| 120000 |    13 |    3 |    4 |     14150 | \[13960, 14340\] |         1.4 |    16 |
| 140000 |    14 |    3 |    4 |     14920 | \[14730, 15800\] |         1.7 |    16 |
| 165000 |    15 |    3 |    5 |     18460 | \[17580, 18650\] |         1.6 |    17 |
| 195000 |    16 |    3 |    5 |     19230 | \[19040, 19420\] |         1.6 |    17 |
| 225000 |    17 |    4 |    5 |     20000 | \[19810, 21040\] |         2.0 |    17 |
| 265000 |    18 |    4 |    6 |     24150 | \[23110, 24340\] |         1.7 |    18 |
| 305000 |    19 |    4 |    6 |     24920 | \[24730, 25110\] |         2.0 |    18 |
| 355000 |    20 |    4 |    6 |     25690 | \[25500, 22250\] |         1.9 |    18 |

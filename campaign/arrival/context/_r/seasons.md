# Season generator

## Inputs

``` r
set.seed(2)

# Inputs
noOfCycles <- 300
cycleLength <- round(rtri(noOfCycles, min = 10, max = 25, mode = 15), 1)
winterLength <- round(rtri(noOfCycles, min = 3, max = 9, mode = 5), 1)
summerLength <- round(rtri(noOfCycles, min = 0, max = 0.9, mode = 0.8), 1)
shoulderLength <- round((cycleLength - winterLength - summerLength) / 2, 1)

cyclesLengths <- data.frame(cycle = cycleLength,
                            winter = winterLength,
                            summer = summerLength,
                            shoulder = shoulderLength)

knitr::kable(cyclesLengths[225:235,], format = 'pipe')
```

|     | cycle | winter | summer | shoulder |
|:----|------:|-------:|-------:|---------:|
| 225 |  18.1 |    5.1 |    0.6 |      6.2 |
| 226 |  20.3 |    3.6 |    0.2 |      8.2 |
| 227 |  21.4 |    3.6 |    0.3 |      8.7 |
| 228 |  16.1 |    6.3 |    0.1 |      4.9 |
| 229 |  18.4 |    4.8 |    0.6 |      6.5 |
| 230 |  19.9 |    7.4 |    0.8 |      5.8 |
| 231 |  18.0 |    4.0 |    0.3 |      6.8 |
| 232 |  15.0 |    8.0 |    0.1 |      3.5 |
| 233 |  21.0 |    8.2 |    0.8 |      6.0 |
| 234 |  16.6 |    4.3 |    0.6 |      5.9 |
| 235 |  20.7 |    6.2 |    0.3 |      7.1 |

## Simulation

``` r
yearStart <- 1
cyclesEnd <- yearStart + cumsum(cycleLength)
cyclesStart <- c(yearStart, (lag(cyclesEnd)[-1] + 1))

primaveras <- cyclesStart
veroes <- primaveras + shoulderLength
outonos <- veroes + summerLength
invernos <- outonos + shoulderLength

iniSeasons <- data.frame(primaveras = primaveras,
                         veroes = veroes,
                         outonos = outonos,
                         invernos = invernos)
```

## Seasons

``` r
knitr::kable(iniSeasons[225:235,], format = 'pipe')
```

|     | primaveras | veroes | outonos | invernos |
|:----|-----------:|-------:|--------:|---------:|
| 225 |     3744.9 | 3751.1 |  3751.7 |   3757.9 |
| 226 |     3765.2 | 3773.4 |  3773.6 |   3781.8 |
| 227 |     3786.6 | 3795.3 |  3795.6 |   3804.3 |
| 228 |     3802.7 | 3807.6 |  3807.7 |   3812.6 |
| 229 |     3821.1 | 3827.6 |  3828.2 |   3834.7 |
| 230 |     3841.0 | 3846.8 |  3847.6 |   3853.4 |
| 231 |     3859.0 | 3865.8 |  3866.1 |   3872.9 |
| 232 |     3874.0 | 3877.5 |  3877.6 |   3881.1 |
| 233 |     3895.0 | 3901.0 |  3901.8 |   3907.8 |
| 234 |     3911.6 | 3917.5 |  3918.1 |   3924.0 |
| 235 |     3932.3 | 3939.4 |  3939.7 |   3946.8 |

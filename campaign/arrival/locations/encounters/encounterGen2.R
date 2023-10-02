# ---
# title: "Generic Encounter Generator"
# date: "2023-09-25"
# ---
  
# libraries
library(dplyr)
library(yaml)
library(EnvStats)

# script to evaluate encounter rank
if (FALSE) {
  n <- 10000
  
  f1n <- round(rtri(n, 1, 8, 3.5))
  f2n <- round(rtri(n, 0.5, 1.5, 1))
  f3n <- round(rtri(n, 0, 2, 0.5))
  f4n <- rep(1, n)
  f5n <- round(rtri(n, 0, 2, 1))
  
  hist(f1n + f2n + f3n + f4n + f5n)
  mean(f1n + f2n + f3n + f4n + f5n)
  
  f1r <- 1
  f2r <- 3
  f3r <- 5
  f4r <- 7
  f5r <- 10
  
  hist(f1n*f1r + f2n*f2r + f3n*f3r + f4n*f4r + f5n*f5r)
  mean(f1n*f1r + f2n*f2r + f3n*f3r + f4n*f4r + f5n*f5r)
}

# function to generate the encounter code for obsidian
genEncCode <- function (entry) {
  code <- '```encounter\ncreatures:\n'
  for (i in seq_along(entry)) {
    args <- as.numeric(strsplit(names(entry[[i]]), '-')[[1]])
    
    if (length(args) == 1) {
      numberEnc <- args
    } else {
      numberEnc <- round(rtri(1, min = args[1], max = args[2], mode = args[3]))
    }
    
    code <- paste0(code, ' - ', numberEnc, ': ', as.character(entry[[i]]), '\n')
  }
  
  code <- paste0(code, '```')
  return (code)
}

# function to return the reaction based on roll
genReacRoll <- function (mod = 0) {
  reacRoll <- sample(1:6, 1) + sample(1:6, 1) + mod
  reaction <- case_when(
    reacRoll == 2 ~ '2: As aggressively hostile as the situation allows',
    reacRoll <= 5 ~ '3-5: More unfriendly and hostile than they’d be expected to be in the given situation',
    reacRoll <= 8 ~ '6-8: As predictably hostile or friendly as they’d usually be in this situation',
    reacRoll <= 11 ~ '9-11: More friendly and benign than you’d expect them to be, given the circumstances',
    reacRoll == 12 ~ '12+: As friendly and helpful as their nature and the situation permits them to be',
  )
  return (reaction)
}

# import data
dataLst <- read_yaml('campaign/arrival/locations/encounters/list_linhe.md')

# user inputs
time <- 'night'
rank <- 'r1'
reacMod <- 0

# define distance and encounter type
distance <- (sample(1:6, 1) + sample(1:6, 1) + sample(1:6, 1) + 1) * 5
type <- sample(dataLst$type, 1)
reaction <- genReacRoll(reacMod)

# define list type based on header information
if (type == 'effects') {
  lstName <- type
} else {
  lstName <- paste(type, time, rank, sep = '_')
  lstActName <- paste0(type, '_activities')
}

# store header
header <- paste0('\nIt is ', time, ' in a hex of rank ', rank,
                 '\nThere are ', type, ', ', distance, ' meters away')

# encounter code
if (type == 'effects') {
  encCode <- sample(dataLst$effects, 1)
} else {
  lstIndex <- seq_along(dataLst[[lstName]])
  lstChoice <- sample(lstIndex, 1)
  actChoice <- sample(dataLst[[lstActName]], 1)
  
  encCode <- paste0('  ***  ', names(dataLst[[lstName]][[lstChoice]]), '  ***  ',
                    '\nThey are ', actChoice,
                    '\nTheir reaction is ', reaction, '\n\n',
                    genEncCode(dataLst[[lstName]][[lstChoice]][[1]]))
}

# print encounter
cat(paste0(header, '\n\n',
           encCode))

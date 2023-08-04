# ---
# title: "Wandering Encounters"
# date: "2023-08-03"
# ---
  
# libraries
library(dplyr)
library(yaml)

# function to generate the encounter code for obsidian
genEncCode <- function (entry) {
  code <- '```encounter\ncreatures:\n'
  for (i in seq_along(entry)) {
    code <- paste0(code, ' - ',
                   names(entry[[i]]), ': ',
                   as.character(entry[[i]]), '\n')
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
dataLst <- read_yaml('campaign/locations/encounters/list_linhe.md')

# user inputs
time <- 'day'
rank <- 'r0'
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

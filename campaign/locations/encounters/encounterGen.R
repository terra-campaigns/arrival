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
    code <- paste0(code, ' - ', names(entry[[i]]), ': ', as.character(entry[[i]]), '\n')
  }
  code <- paste0(code, '```')
  return (code)
}

# import data
dataLst <- read_yaml('campaign/locations/encounters/list_linhe.md')

# user inputs
time <- 'day'
rank <- 'r0'

# define distance and encounter type
distance <- (sample(1:6, 1) + sample(1:6, 1) + sample(1:6, 1) + 1) * 5
type <- sample(dataLst$type, 1)

# define list type based on header information
if (type == 'effects') {
  lstName <- type
} else {
  lstName <- paste(type, time, rank, sep = '_')
}

# store header
header <- paste0('It is ', time, ' in a hex of rank ', rank,
                 '\nThere are ', type, ', ', distance, ' meters away')

# encounter code
lstIndex <- seq_along(dataLst[[lstName]])
lstChoice <- sample(lstIndex, 1)
encCode <- genEncCode(dataLst[[lstName]][[lstChoice]][[1]])

# print encounter
cat(paste0(header, '\n\n',
           names(dataLst[[lstName]][[lstChoice]]), '\n\n',
           encCode))


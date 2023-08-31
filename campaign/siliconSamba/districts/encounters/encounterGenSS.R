# ---
# title: "Silicon Samba City Encounters"
# date: "2023-08-03"
# ---
  
# libraries
library(dplyr)
library(yaml)
library(EnvStats)

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

# user inputs
rank <- 0
reacMod <- 0

# define distance, reaction
distance <- (sample(1:6, 1) + sample(1:6, 1) + sample(1:6, 1) + 1) * 5
reaction <- genReacRoll(reacMod)

# define HD of encounter
if (rank == 0) {
  hd_distr <- c(1, 7, 4)
} else {
  hd_total <- rank * 10
  hd_distr <- hd_total + c(-9, 9, 0)
}

hd_enc <- round(rtri(1, min = hd_distr[1],max = hd_distr[2],
                     mode = hd_distr[3]))


# store encounter text
enc_text <- paste0('\nIn a location of rank ', rank,
                   ' the encounter happens at ', distance, ' meters away',
                   '.\nTheir total hit dice is ', hd_enc,
                   '.\nTheir reaction is ', reaction)

# print encounter
cat(enc_text)

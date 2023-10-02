# ---
# title: "NPC Generator"
# date: "2023-08-23"
# ---
  
# libraries
library(dplyr)
library(yaml)
library(EnvStats)

# import data
dataLst <- read_yaml('arrival/npcs/_generators/lists01.md')

# define list type based on header information

npc <- lapply(names(dataLst), function (entry) {
  result <- paste0('- **', entry, '**: ', sample(dataLst[[entry]], 1), '\n')
  return (result)
}) 

cat(paste0('\n', unlist(npc)))


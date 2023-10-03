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
  # sample entry on a sub list
  txts <- sample(dataLst[[entry]], 1)
  
  # if sub list contains more details, retrieve those
  if (is.list(txts)) {
    
    # correct for case of entry without detail in sub list where other
    # entries had details
    if (is.null(names(txts[[1]]))) {
      result <- paste0('- **', entry, '**: ', txts[[1]][[1]], '\n')
    } else {
      
      # retrieve sub list entry details
      result1 <- paste0('- **', entry, '**: ', names(txts[[1]]), '\n    - ')
      result2 <- paste0(txts[[1]][[1]], collapse = '\n    - ')
      result <- paste0(result1, result2, '\n') 
    }
    
    # retrieve sub list with simple entries
  } else {
    result <- paste0('- **', entry, '**: ', txts, '\n')
  }
  
  # define returned entry
  return (result)
}) 

# print for md
cat('', paste0(unlist(npc)))

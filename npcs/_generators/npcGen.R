# ---
# title: "NPC Generator"
# date: "2023-08-23"
# ---
  
# libraries
library(dplyr)
library(yaml)
library(EnvStats)

# import list data
dataLst <- read_yaml('arrival/npcs/_generators/lists01.md')

# define storage location
location <- 'hostile/npcs/'

# define npc name
npcName <- 'auto NPC'
npcConcept <- 'NPC Concept'

# roll an npc as a list
orderInBlock <- c('Manneirism', 'Mutation', 'Tag', 'Strength', 'Virtue', 'Flaw', 'Problem', 'Desire')

npcListRoll <- lapply(orderInBlock, function (entry) {

  # sample entry on a sub list
  txts <- sample(dataLst[[entry]], 1)
  
  # if sub list contains more details, retrieve those
  if (is.list(txts)) {
    
    # correct for case of entry without detail in sub list where other
    # entries had details
    if (is.null(names(txts[[1]]))) {
      result <- list(name = entry,
           desc = txts[[1]][[1]])
      
    } else {
      # retrieve sub list entry details
      result <- list(name = names(txts[[1]]),
                     desc = paste0(txts[[1]][[1]], collapse = ' ||||| '))
    }
    
    # retrieve sub list with simple entries
  } else {
    result <- list(name = entry,
                   desc = txts)
  }
  
  # define returned entry
  return (result)
})

# prepare list to yaml
npcListYaml <- list(roleplay = npcListRoll[1:2],
                    personality = npcListRoll[3:8])

# write file to location
writeLines(c('---', 
             'statblock: yes',
             'layout: Terra Campaigns Leiaute v04',
             'source: Terra Campaigns 3-attribute NPC statblocks | NPC Generator\n',
             paste0('name: ', npcName),
             paste0('concept: ', npcConcept, '\n'),
             as.yaml(npcListYaml), 
             paste0('npc_link: \'[', npcName, '](', location, gsub(" ", "", npcName), '.md)\''),
             '---',
             paste0('# ', npcName),
             paste0('***', npcConcept,'***\n'),
             '## Background',
             '- ...\n',
             '## Key info and notes',
             '- ...\n'
             ),
           paste0(location, gsub(" ", "", npcName), '.md'))

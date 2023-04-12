library(rjson)
library(dplyr)
library(stringr)
library(jsonlite)

# import data
techTree <- rjson::fromJSON(file = 'rules/_aux/civTechTree.json')

# clean data
techTree <- lapply(techTree, function(tech) {
  if (str_detect(tech$tech_name, '\\(')) {
    tech$tech_name <- sub(" \\(Civ5)", "", tech$tech_name)
  }
  return (tech)
})

# create simple table for reference
techTable <- lapply(techTree, function(tech) {
  data.frame(tech_id = tech$tech_id,
             tech_name = str_to_lower(tech$tech_name),
             era = tech$era,
             cost = tech$cost,
             units = toString(tech$units_enabled))
})
techTable <- do.call(rbind, techTable)
names(techTree) <- techTable$tech_name

# summarise cost per era, and calculate yearly costs per era
costPerEra <- techTable %>%
  group_by(era) %>%
  summarise(totCost = sum(cost)) %>%
  arrange(totCost) %>%
  mutate(cumCost = cumsum(totCost),
         yearsInEra = c(3000, 1500, 850, 375, 165, 55, 50, 25),
         cumYears = cumsum(yearsInEra),
         progrPerYear = totCost / yearsInEra)

techInfoTbl <- costPerEra %>%
  mutate(era_id = 1:8) %>%
  select(era_id, era, yearsInEra)
  

techInfoTbl <- techInfoTbl %>%
  left_join(techTable %>%
              group_by(era) %>%
              summarise(techs = paste0(tech_name, collapse = ', ')),
            by = 'era')

write.csv(techInfoTbl, 'rules/_aux/techInfoTbl.csv', row.names = FALSE)


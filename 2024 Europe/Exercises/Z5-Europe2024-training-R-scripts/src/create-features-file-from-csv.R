library(rstudioapi)
library(dplyr)


setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

# Functions ---------------------------------------------------------------

create_features_file <- function(
  features_file,
  output_file,
  columns,
  all_features=FALSE,
  all_selected_features=FALSE
) {
  features_df <- read.delim(features_file, sep=' ')
  if (all_features) {
    write.table(
      features_df %>% select(all_of(columns)),
      output_file,
      row.names=FALSE
    )
    return (0)
  }
  output_df <- features_df %>%
    filter(SELECTED != '0') %>%
    arrange(SELECTED)
  if (all_selected_features) {
    write.table(
      output_df %>% select(all_of(columns)),
      output_file,
      row.names=FALSE
    )
    return (0)
  }
  write.table(
    subset(
      output_df %>% filter(SELECTED == '1'),
      select=columns
    ),
    output_file,
    row.names=FALSE
  )
  return (0)
}


# Main script -------------------------------------------------------------

# Exercise 1
create_features_file(
  features_file='../data/current_sdm_main.csv',
  output_file='../../01_caz2_hw/features.txt',
  columns=c('filename'),
  all_selected_features=FALSE
)

# Exercise 2
create_features_file(
  features_file='../data/current_sdm_main.csv',
  output_file='../../02_cazmax_hw/features.txt',
  columns=c('filename'),
  all_selected_features=FALSE
)

# Exercise 3
create_features_file(
  features_file='../data/current_sdm_main.csv',
  output_file='../../03_caz2_hw_sw/features.txt',
  columns=c('filename'),
  all_selected_features=TRUE
)

# Exercise 4
create_features_file(
  features_file='../data/current_sdm_main.csv',
  output_file='../../04_caz2_hw_sw_wghts/features.txt',
  columns=c('weight', 'filename'),
  all_selected_features=TRUE
)

# Exercise 5
create_features_file(
  features_file='../data/current_sdm_main.csv',
  output_file='../../05_caz2_hw_sw_wghts_gHM/features.txt',
  columns=c('weight', 'filename'),
  all_selected_features=TRUE
)
write(
  '-10 "../data/other_layers/gHM_Europe.tif"',
    '../../05_caz2_hw_sw_wghts_gHM/features.txt',
  append=TRUE
)

# Exercise 6
create_features_file(
  features_file='../data/current_sdm_main.csv',
  output_file='../../06_caz2_hw_sw_wghts_hmask/features.txt',
  columns=c('weight', 'filename'),
  all_selected_features=TRUE
)

# Extra tasks
create_features_file(
  features_file='../data/current_sdm_main.csv',
  output_file='../../00_extra_tasks/features.txt',
  columns=c('weight', 'filename'),
  all_features=TRUE
)

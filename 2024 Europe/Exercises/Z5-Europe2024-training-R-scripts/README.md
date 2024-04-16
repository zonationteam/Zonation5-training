# R scripts for Europe 2024 training data

These files are not necessary for doing the exercises, but they showcase how you could store your Zonation 5 related data in CSV-format and how you can use R to create necessary files for running your Zonation 5 analyses. Use RStudio for running these scripts.

## Installation
This R project uses renv (https://rstudio.github.io/renv/articles/renv.html) for package management.
1. Open project file "Z5-Europe2024-training-R-scripts.Rproj".
2. Check that working directory is set to "2024 Europe/Exercises/Z5-Europe2024-training-R-scripts/".
    - If not, change it e.g. from control panel (Session > Set Working Directory > To Project Directory).
3. Install correct versions of packages used in this project by using command `renv::restore()`. When prompted, activate the project by selecting "1: Activate the project and use the project library".
    - If you do not have R project package management packagege renv installed, install it first from CRAN by using command install.packages("renv") (currently using version 1.0.3).

## Instructions
Script files can be found in src folder and csv-datafile in data folder.

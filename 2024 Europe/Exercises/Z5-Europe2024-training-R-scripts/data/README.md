# README of current_sdm_main.csv
Use csv-file to pick and choose features and columns for exercises.

## Explanations of column data
### group
Tree families, except all conifers which are in one group.
- 1 = Conifers
- 2 = Anacardiaceae
- 3 = Betulaceae
- 4 = Cannabaceae
- 5 = Ericaceae
- 6 = Fabaceae
- 7 = Fagaceae
- 8 = Juglandaceae
- 9 = Lauraceae
- 10 = Malvaceae
- 11 = Oleaceae
- 12 = Rosaceae
- 13 = Salicaceae
- 14 = Sapindaceae
- 15 = Ulmaceae

### weight
Currently random numbers between 0.2 and 5.0

### filename
Self-explanatory, paths relative to exercise folders.

### SELECTED
Used to mark which tree species are selected to analysis (1 = selected initially, 2 = added in exercise 3).

Currently first species from each genus is selected in alphabetically ordered list. Conifer species are added in exercise 3. Exceptions and modifications:
- Ceratonia siliqua was replaced with Betula pubescens (former has a lot of its distribution south of Mediterranean sea, latter is present in the most nothern parts of Europe where was no selected trees present).

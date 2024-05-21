library(terra)

par(mfrow=c(3, 4))

files <- c(
  "../data/sdms/current/Acer_platanoides_ens-sdms_cur2005_prob_pot.tif",
  "../data/sdms/current/Betula_pubescens_ens-sdms_cur2005_prob_pot.tif",
  "../data/sdms/current/Fraxinus_angustifolia_ens-sdms_cur2005_prob_pot.tif",
  "../data/sdms/current/Malus_sylvestris_ens-sdms_cur2005_prob_pot.tif",
  "../data/sdms/current/Populus_tremula_ens-sdms_cur2005_prob_pot.tif",
  "../data/sdms/current/Quercus_frainetto_ens-sdms_cur2005_prob_pot.tif",
  "../data/sdms/current/Sorbus_aucuparia_ens-sdms_cur2005_prob_pot.tif",
  "../data/sdms/current/Tilia_cordata_ens-sdms_cur2005_prob_pot.tif",
  # Last row of maps of features added in Exercise 3
  "../data/sdms/current/Abies_alba_ens-sdms_cur2005_prob_pot.tif",
  "../data/sdms/current/Juniperus_thurifera_ens-sdms_cur2005_prob_pot.tif",
  "../data/sdms/current/Pinus_brutia_ens-sdms_cur2005_prob_pot.tif",
  "../data/sdms/current/Pinus_sylvestris_ens-sdms_cur2005_prob_pot.tif"
)

for (file in files) {
  raster <- terra::rast(file)
  plot(raster, main=file)
}

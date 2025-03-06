# working directory
#setwd(dirname(rstudioapi::getSourceEditorContext()$path))

# packages
list_packages = c('readxl', 'dplyr', 'moments', 'tidyr', 'tibble', 'gt', 'ggplot2', 
                  'fmsb', 'car', 'reshape2', 'knitr', 'gridExtra', 'ggExtra', 'sf', 
                  'leaflet', 'igraph', 'ggraph', 'tidygraph', 'spdep', 'classInt', 
                  'corrplot', 'spData', 'Matrix')
new.packages = list_packages[!(list_packages %in% installed.packages()[,"Package"])]
if (length(new.packages)) {
  install.packages(new.packages)
}
for (package in list_packages){
  library(package, character.only = T)
}

# Load the dataset
delitos_data <- st_read("data/spatial/crime_spatial_course.gpkg")
delitos_data <- delitos_data[delitos_data$dpto_ccdgo == '11', ]
#delitos_data <- delitos_data[delitos_data$manz_ccnct == '1100110000000011020307', ]
# TITLE: Exisiting forest cover  ----------
## C. Chisholm, Nov. 5, 2021


## For the purpose of site plan building
## I would like to populate the exisiting forest cover
## for all of my SU units.

## Process ----------
## 1. load the vri data.  To aquire the data see `bcdata_data_download.R`
##    - select fields of interest
## 2. load polygons of interest (i.e. Standard Unit polygons)
## 3. use st_intersect to populate the


library(dplyr)
library(sf)


## Load data ----------

vri <- st_read("~/workspace/2021/tmp/bcdata/Other_VRI.geojson", quiet = TRUE)
SUs <- st_read("~/data/GIS/ALRF/Projects/2021/BlkDev/all_SUs_211102.gpkg", quiet = TRUE) %>%
  st_transform(., st_crs(vri))


## * Choose fields of interest -----------
names(vri) %>% sort()
l <- grep("LABEL", names(vri))
names(vri)[l]

vri.s <-
  vri %>%
    dplyr::select(SPECIES_CD_1, SPECIES_PCT_1, PROJ_AGE_1, PROJ_AGE_CLASS_CD_1,
                  SPECIES_CD_2, SPECIES_PCT_2, PROJ_AGE_2, PROJ_AGE_CLASS_CD_2,
                  SPECIES_CD_3, SPECIES_PCT_3,
                  SPECIES_CD_4, SPECIES_PCT_4,
                  SPECIES_CD_5, SPECIES_PCT_5,
                  CROWN_CLOSURE,
                  BASAL_AREA, LIVE_STAND_VOLUME_175,
                  VRI_LIVE_STEMS_PER_HA,
                  FULL_LABEL)

## Intersect the data -------------
SUs <- st_intersection(SUs, vri.s)


## choose SUs with WTR
l <- grep("WTR", SUs$SU)
WTR <- SUs[l,] %>% st_transform(., 26910)
WTR


## Mapview of the data ---------
mapview::mapview(WTR)


## Export the data -------------
st_write(WTR,
         "~/data/GIS/ALRF/Projects/2021/BlkDev/WTR_ForestCover.gpkg",
         "WTP-VRI",
         delete_dsn = TRUE)

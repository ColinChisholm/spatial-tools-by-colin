## read spatial data and export attributes to clipboard
## C. Chisholm, August 10, 2021

library(sf)


dat <- st_read("d:/GIS/ALRF/Projects/2021/BlkDev/51/51_Draft_210809_RoadsRemoved.gpkg")
# dat <- st_read("d:/GIS/ALRF/Projects/2021/BlkDev/66/66_Draft_210809.gpkg")
dat

dat <- dat %>% as.data.frame() %>% dplyr::select(-geom)

write.table(dat, "clipboard",    # Clipboard
            sep="\t",            # tab delineated
            row.names = FALSE)

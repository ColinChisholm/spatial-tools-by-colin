## Harvest Planning -- Area summaries 
## C. Chisholm, Oct. 2021

## load all blocks and create summary tabular data 
## I use this to summarize my harvest blocks -- finding it very useful as 
##   the site plan develops and edits are made -- provides a fast means of 
##   updating the tabular data. 


library(dplyr)
library(sf)
library(tmap)

## Read Data ------------

### Load Blk data -------

b50 <- st_read("D:/GIS/ALRF/Projects/2021/BlkDev/50/50_Draft_210820-2.gpkg") %>% 
  dplyr::select(Blk, SU, Eco) %>% 
  st_buffer(.,0)
b51 <- st_read("D:/GIS/ALRF/Projects/2021/BlkDev/51/51_SUs_211022.gpkg") %>% 
  dplyr::select(Blk, SU, Eco) %>% 
  st_transform(., st_crs(b50)) %>% 
  st_buffer(.,0)
b52 <- st_read("D:/GIS/ALRF/Projects/2021/BlkDev/52/52_Gross_Area_211021.gpkg") %>% 
  dplyr::select(Blk, SU, Eco) %>% 
  st_transform(., st_crs(b50)) %>% 
  st_buffer(.,0)
# b66 <- st_read("D:/GIS/ALRF/Projects/2021/BlkDev/66/66_Draft_210809.gpkg") %>% 
#   dplyr::select(Blk, SU, Eco) %>% 
#   st_transform(., st_crs(b50)) %>% 
#   st_buffer(.,0)
b98 <- st_read("D:/GIS/ALRF/Projects/2021/BlkDev/99B/99B_SUs_211020.gpkg") %>% 
  dplyr::select(Blk, SU, Eco) %>% 
  st_transform(., st_crs(b50)) %>% 
  st_buffer(.,0)

#### Bind all the blks -----
blks <- rbind(b50, b51)
blks <- rbind(blks, b52, b98)#, b66)


### Load the road data ------
r50 <- st_read("D:/GIS/ALRF/Projects/2021/BlkDev/50/50_Roads_211020.gpkg") %>% 
  mutate(Blk = 50)
r51 <- st_read("D:/GIS/ALRF/Projects/2021/BlkDev/51/51_Roads_211020.gpkg") %>% 
  st_transform(., st_crs(b50)) %>% 
  mutate(Blk = 51)
# r52 -- no inblock roads 

Roads <- rbind(r50, r51)


### Quick Map of SUs and Roads ----------
tm <- 
  tm_shape(SUs) + tm_polygons(col = "SU") + 
  tm_shape(Roads) + tm_lines(lwd = 2, col = "red")

tmap_options(check.and.fix = TRUE)
tmap_leaflet(tm)



## Tabular summary SUs --------
SUs <- 
  blks %>% group_by(Blk, SU) %>% 
  summarise() 

SUs$area <- round(as.numeric(st_area(SUs, units)/10000),2)

SUs


## Various Filters ------ 
## only interested in areas being harvested
# SUs <- SUs %>% filter(SU %in% c("1", "2", "02", "01", "3", "Rock", "NCBr"))
# SUs <- SUs %>% group_by(Blk) %>% summarise()

## drop 98 
# SUs <- SUs %>% filter(Blk != 98)
# SUs <- SUs %>% filter(Blk == 52)




## Output ALL SUs -------------
# st_write(SUs, "d:/GIS/ALRF/Projects/2021/BlkDev/all_SUs.gpkg",
#          "all_SUs", 
#          delete_dsn = TRUE)



## Layout Length  --------------
# lo <- SUs %>% st_cast("MULTILINESTRING")
# lo$lengh <- st_length(lo)
# lo
# 
# st_write(lo,"D:/GIS/ALRF/Projects/2021/BlkDev/LayoutLines52.gpkg",
#          "LayoutLines")


## Gross Area -----------
gBlk <- 
  blks %>% group_by(Blk) %>% 
  # filter(Blk != 98) %>% 
  summarise() %>% 
  st_buffer(0.001)
  

gBlk$garea <- round(as.numeric(st_area(gBlk, units)/10000),2)

mapview::mapview(gBlk)


### Output Gross Area ---------
# st_write(gBlk, "d:/GIS/ALRF/Projects/2021/BlkDev/all_gross_area.gpkg",
#          "all_GrossArea",
#          delete_dsn = TRUE)


## Road Area ------------
## assumes a 15m temporary road r/w

Rd15 <- Roads %>% st_buffer(7.5, joinStyle = "ROUND") %>% 
  st_intersection(gBlk) %>% 
  mutate(Rd_Area = as.numeric(round(st_area(.))/10000)) %>% 
  dplyr::select(Blk, Rd_Area)

  


### Quick Map of SUs Roads and Rd. Buffers ----------
tm <- 
  tm_shape(SUs) + tm_polygons(col = "SU") + 
  tm_shape(Rd15) + tm_polygons("yellow") + 
  tm_shape(Roads) + tm_lines(lwd = 1, col = "red")

tmap_options(check.and.fix = TRUE)
tmap_leaflet(tm)










## join tables --------
out <- as.data.frame(gBlk) %>% 
  left_join(as.data.frame(SUs), by = "Blk") %>% 
  left_join(as.data.frame(Rd15), by = "Blk") %>% 
  dplyr::select(-geom.x, -geom.y)
out

write.csv(out, "./out/Area_Sums_211025.csv",
          row.names = FALSE)

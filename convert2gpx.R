### Convert to GPX / GPS format for Garmin GPS units 

library(sf)
library(rgdal)


## Make these first variables inputs of function to wrap all below
input <- "d:/GIS/ALRF/Projects/2020/BlkDev/blk8/SelCutSurvey.gpkg"
NameField <- "name"
filename <- "output"
setwd("d:/GIS/GIS GPS/")




### supporting functions ----

c_write_OGR <- function (sfdat, layer, filename){
  
  st_write(sfdat, "tmp.gpkg",   ## write out the sf object (temp file) 
           delete_dsn = TRUE)   
  readOGR("tmp.gpkg")           ## open with gdal  
  dat <- readOGR("e:/tmp.gpkg") ## export GPX 
  writeOGR(dat, paste0(filename, ".gpx"), 
           driver = "GPX", 
           layer = layer,       ## options: waypoints, routes, tracks 
           overwrite_layer = TRUE,
           delete_dsn = TRUE)   ## will delete the output if it exists! 
  unlink("tmp.gpkg")
  
}



  
  

### MAIN FUNCTION ----------
write_GPX <- function (input, NameField, output) {

  ##  read the data and determine type 
  dat <- st_read(input) %>% 
    st_transform(.,4326) %>% ## tranform to WGS 84 for GPS use
    dplyr::rename(name = name)
    
  # dat$geom[1]
  
  ## Type of geometry
  gclass <- st_geometry_type(dat) %>% unique(.) %>% as.character(.)
  
  
  ## Scenario -- data saved as multipoint ------
  if (gclass == "MULTIPOINT") {
  ## a. open via sf and convert to point
    dat <- dat %>% st_cast(., "POINT")
    
    ## save sf, open with gdal and save with gdal --- _make this a function_
    c_write_OGR(dat, "waypoints", filename)
  
    
  ## Scenario -- data saved as POINT  -------      
  } else if (gclass == "POINT") {
    c_write_OGR(dat, "waypoints", filename)
  
  
  ### Add more here!!!! ------------ 
  ### create scenarios for line and multiline ... not sure if there would be any trouble there. 
  } else {
  print("currently only point and multipoint geometries are supported")
  }

## closing statements 
  if (file.exists(paste0(filename, ".gpx"))) {
  print("Conversion Successful!")
  print(paste0("Exported to: ", getwd(), "/", filename, ".gpx"))
  mapview::mapview(dat)    
  }
}


write_GPX(input, NameField, filename)
  
 


















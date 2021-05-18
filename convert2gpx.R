### Convert to GPX / GPS format for Garmin GPS units 
### by C. Chisholm
### initiated August 2020
### last edits: August 31, 2020

library(sf)
library(rgdal)


## Make these first variables inputs of function to wrap all below
input <- "d:/GIS/ALRF/Projects/2021/StandingTimberInventory/SW_STI_Recce_Plots.gpkg"
t <- st_read(input)
NameField <- "plot"
filename <- "SW_STI_Recce_Plots"
setwd("d:/GIS/GIS GPS/")




### supporting functions ----
### This function does the actual writing of the GPX file.  
### ... not that efficient as an sf object needs to be saved and then 
###     re-opened using rgdal.  
c_write_OGR <- function (sfdat, layer, filename){
  
  ## testing
  # sfdat <- dat
  # layer <- "waypoints"
  
  
  st_write(sfdat, "tmp.gpkg",   ## write out the sf object (temp file) 
           delete_dsn = TRUE)   
  readOGR("tmp.gpkg")           ## open with gdal  
  dat <- readOGR("tmp.gpkg") 
  writeOGR(dat, paste0(filename, ".gpx"),  ## export GPX 
           driver = "GPX", 
           layer = layer,       ## options: waypoints, routes, tracks 
           dataset_options = "GPX_USE_EXTENSIONS=yes",
           overwrite_layer = TRUE,
           delete_dsn = TRUE)   ## will delete the output if it exists! 
  unlink("tmp.gpkg")
  
}



  
  

### MAIN FUNCTION ----------
### I should change this so the input could be a sf object in memory... 
###
### Opens, review for geometry type, conversion if needed, and then export
write_GPX <- function (input, NameField, output) {

  ##  read the data and determine type 
  dat <- st_read(input) %>% 
    st_transform(.,4326) %>% ## tranform to WGS 84 for GPS use
    dplyr::rename(Name = NameField) %>% 
    mutate(Name = as.character(Name))
    
  ## Type of geometry
  gclass <- st_geometry_type(dat) %>% unique(.) %>% as.character(.)
  
  
  ## Scenario -- data as multipoint ------
  if (gclass == "MULTIPOINT") {
  ## a. open via sf and convert to point
    dat <- dat %>% st_cast(., "POINT")
    
    ## calls function above: save sf, open with gdal and save with gdal
    c_write_OGR(dat, "waypoints", filename)
  
    
  ## Scenario -- data as POINT  -------      
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
  
 

#### DRAFT: Save Polygon as line -------------




















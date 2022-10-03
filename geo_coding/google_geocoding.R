## Using Geo_coding via Google's API
## See: https://towardsdatascience.com/breaking-down-geocoding-in-r-a-complete-guide-1d0f8acd0d4b
# install packages
# install.packages("ggmap")
# install.packages("tmaptools")
# install.packages("RCurl")
# install.packages("jsonlite")
# install.packages("tidyverse")
# install.packages("leaflet")
# load packages
library(ggmap)
library(tmaptools)
library(RCurl)
library(jsonlite)
library(tidyverse)
library(leaflet)



key <- read.table("e:/colin/ks/gg_api.txt")  %>% unlist()

register_google(key = key)


## Some Places to look up

loc <- c("University of Northern British Columbia", 
         "2924 Wayne St., Prince George BC",
         "Westwood Church, BC")

geo_loc <- geocode(location = loc, 
                   output = "latlona",
                   source = "google")
geo_loc <- geo_loc %>% 
  sf::st_as_sf(coords = c("lon", "lat")) %>% 
  sf::st_set_crs(4326)

mapview::mapview(geo_loc)


geo_loc



?geocode

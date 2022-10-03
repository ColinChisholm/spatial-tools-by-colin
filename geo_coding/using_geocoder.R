library(tibble)
library(dplyr)
# install.packages("tidygeocoder")
library(tidygeocoder)
library(sf)

address <- tribble(
  ~street, ~cty, ~state, ~country,
  # "Gompertstraat 3", "Paramaribo", "Suriname",
  # "Helena Christinaweg 3", "Wanica", "Suriname",
  "2924 Wayne St.", "Prince George", "BC", "Canada",
  "3333 University Way", "Prince George", "BC", "Canada"
)
df <- address %>%
  geocode(street = street, city = cty, country = country, method = "arcgis")
df

d3 <- data.frame(addtrss = "2500 Wayne St., Prince George, BC, Canada")

d3 <- d3 %>% geocode(address = addtrss)
d3b <-  st_as_sf(d3, coords = c("long", "lat")) %>% 
  st_set_crs(4326)



df2 <- st_as_sf(df, coords = c("long", "lat")
df2 <- df2 %>% st_set_crs(4326)
df2

df
mapview::mapview(d3b)


?tidygeocoder

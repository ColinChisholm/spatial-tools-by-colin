#' Merge polygons into a resultant 
#'
#' Essential for creating a resultant -- merging polygons layers together while 
#' ensuring they are tolpologically correct and maintain all of the required 
#' attributes. 
#' 
#'
#' @param rst An sf polygon layer. Generally, this will be the most most processed version of the _resultant_ polygon.
#' @param mgr An sf polygon layer.  Generally a categorical polygon, has one attribute, that has partial overlap with the _rst_.  
#' @param attr A vector of the attribute(s) to keep in the _mgr_ layer
#' @param non_val The value to be attributed to the area that does not overlap _rst_ 
#' @keywords erase, clip, remove area
#' @export
#' @details 
#' Steps taken: 
#' 1. `st_transform()` transforms the `mgr` layer to match that crs of rst layer
#' 1. `st_intersection()`to attribute the `mgr` layer with the existing polygon layers. 
#' 2. `st_difference()` to remove the `mgr` area from the original polygon
#' 3. Add new attributes to `rst`.  Attribute received will be the `non_val`
#' 4. `rbind()` to combine the processed `rst` and `mgr` layers
#' 
#' **NOTE** currently only set up to manage one attribute
#' 
#' @example
#' ... sorry pending 
#' 
#' 



fm_resultant <- function(rst, mgr, 
                         attr = "all", 
                         non_val = NA) {
  
  mgr <- sf::st_transform(mgr, st_crs(rst))
  nm  <- names(mgr)
  nm  <- nm[-length(nm)] ## drop geometery or geom from names
  
  # if (attr != "all") {
  #   mgr <- dplyr::select(mgr, attr)
  # }
  d <- dplyr::summarise(mgr) ## merged shape only
  r <- sf::st_difference(rst, d)
  
  mgr <- sf::st_intersection(mgr, rst)
  
  
  
  
  
  
  ##TESTING
  # non_val <- FALSE
  ##
  
  r[nm] <- list(non_val)          ## adds new attributes to resultant 
  
  r <- rbind(r, mgr)
  
  # t <- st_is_valid(r)
  
  
  
  r$POLY_ID <- seq(1:nrow(r))  ## Provide unique polygon ids 
  
  
  
  return(r)
  
  
}

#' data_frame of flow data from the 2011 census.
#'
#' This dataset was generated using the following code:
#' @examples
#' \dontrun{
#' # After downloading the file from the 'wicid' data access repo
#' flow = readr::read_csv("wu03ew_v2.csv")
#' sel = grep(pattern = "W", x = flow$`Area of residence`)
#' od_wales = flow[sel,]
#' od_wales = as.data.frame(od_wales)
#' use_data(od_wales, overwrite = TRUE)
#' ukmsoas = geojsonio::geojson_read("../pct-bigdata/cents.geojson", what = "sp")
#' library(sp)
#' plot(ukmsoas)
#' welsh_msoas = ukmsoas[grep("W", ukmsoas$geo_code),]
#' proj4string(welsh_msoas)
#' od_wales = od_wales[od_wales$`Area of residence` %in% welsh_msoas$geo_code,]
#' od_wales = od_wales[od_wales$`Area of workplace` %in% welsh_msoas$geo_code,]
#' plot(welsh_msoas)
#' system.time({od_wales_lines = stplanr::od2line(od_wales, welsh_msoas)})
#' system.time({od_wales_lines = od2line2(od_wales, welsh_msoas)})
#' names(od_wales_lines)
#' class(od_wales)
#' use_data(od_wales_lines)
#' }
#'
#' @docType data
#' @keywords datasets
#' @name od_wales
#' @usage data(od_wales)
NULL

# devtools::install_github("AndySouth/rnaturalearth")
# library(rnaturalearth)
# uk = ne_states(country = 'united kingdom')
# library(mapview)
# wales = uk[grep("Wales", uk$geonunit),]
# mapview(wales)
# plot(wales)
# use_data(wales)
# 
# menai_straight = geojsonio::geojson_read("/tmp/mstraight.geojson", what = "sp")
# mapview(menai_straight)
# use_data(menai_straight)

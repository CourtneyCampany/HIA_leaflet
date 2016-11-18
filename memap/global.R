library(shiny)
library(leaflet)

locations <- read.csv("data/memap.csv")
locations_usa <- locations[1:6,]

###data frame for nurserys and their coordinates(pin that dataframe)


###someway to pull the latest boom data (capped at 1 year or something)

##once click on nursery, bring up plots and generate climate data (possible populated them
## with sliders so they have user input)

# 
# ncsulgo <- makeIcon(
#   iconUrl = "data/ncsu.png",
#   iconWidth = 35, iconHeight = 35
# )
# 
# worklogos <- iconList(
# ncsu = makeIcon(iconUrl = "data/ncsu.png",iconWidth = 35, iconHeight = 35),
# app = makeIcon(iconUrl = "data/appstate.png",iconWidth = 35, iconHeight = 35),
# utk = makeIcon(iconUrl = "data/utk.png",iconWidth = 35, iconHeight = 35),
# ornl = makeIcon(iconUrl = "data/ornl.png",iconWidth = 35, iconHeight = 35),
# reno = makeIcon(iconUrl = "data/unr.png",iconWidth = 35, iconHeight = 35),
# idaho = makeIcon(iconUrl = "data/uidaho.jpg",iconWidth = 35, iconHeight = 35)
# )
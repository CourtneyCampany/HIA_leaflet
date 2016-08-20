

shinyServer(function(input, output) {

  output$plot <- renderLeaflet({
    
    leaflet() %>% addTiles%>%
      addCircleMarkers(locations_usa[1:nrow(locations_usa),3], 
                 locations_usa[1:nrow(locations_usa),2],
                 popup = locations_usa[1:nrow(locations_usa),1],
                 col=c("red", "gold", "orange", "forestgreen", "navy", "black"),
                 opacity=c(.85, 100, .85, .85, .85, .85),
                fillColor = c("white", "black", "white", "white", "grey", "darkgoldenrod"),
                 fillOpacity = c(100, 100, 100, 0, 85, 100), weight=3)
    
  }) 
  

})

# addMarkers(locations_usa[1:nrow(locations_usa),3], 
#            locations_usa[1:nrow(locations_usa),2],
#            popup = locations_usa[1:nrow(locations_usa),1],
#            icon=placesicons
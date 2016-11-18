

shinyServer(function(input, output) {

  output$plot <- renderLeaflet({
    
    leaflet()  %>% addTiles%>%
      addCircleMarkers(locations[1:nrow(locations),3], 
          locations[1:nrow(locations),2],
          popup = locations[1:nrow(locations),1],
          col=c("red", "gold", "orange", "forestgreen", "navy", "black", "darkgreen", rep("darkgreen",19),"#990033"),
          opacity=c(.85, 100, .85, .85, .85, .85, rep(.85, 21)),
          fillColor = c("white", "black", "white", "white", "grey", "darkgoldenrod", "plum", 
                        "white", rep("white",19)),
          fillOpacity = c(100, 100, 100, 0, 85, 100, rep(100, 21)), weight=3)
    
  
    
  }) 
  

})

# addMarkers(locations_usa[1:nrow(locations_usa),3], 
#            locations_usa[1:nrow(locations_usa),2],
#            popup = locations_usa[1:nrow(locations_usa),1],
#            icon=placesicons
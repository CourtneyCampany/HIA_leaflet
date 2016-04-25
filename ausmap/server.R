

shinyServer(function(input, output) {

  output$plot <- renderLeaflet({
    
    leaflet() %>% addTiles  %>% setView(133.877363, -23.698302, zoom = 4)%>%
      addMarkers(locations[2:nrow(locations),3], locations[2:nrow(locations),2],popup = locations[2:nrow(locations),1])
    
  }) 
  

})

locations
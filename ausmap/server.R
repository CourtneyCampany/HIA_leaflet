

shinyServer(function(input, output) {

  output$plot <- renderLeaflet({
    
    leaflet() %>% addTiles  %>% setView(133.877363, -23.698302, zoom = )%>%
      addMarkers(133.877363, -23.698302,popup = "hey")
    
  }) 
  

})


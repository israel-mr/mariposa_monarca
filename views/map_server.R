map_server <- function(input, output, session) {
  data <- readxl::read_excel("data/sample1_monarca.xlsx")
  data$fecha <- as.Date(data$fecha, format="%d/%m/%Y")
  output$map_monarca <- renderLeaflet({
    leaflet() %>%
      addProviderTiles("CartoDB.Positron") %>%  
      setView(lng = -102.5528, lat = 23.6345, zoom = 5)
  })
  
  observe({
    for(i in 1:nrow(data)) {
      leafletProxy("map_monarca") %>%
        addCircleMarkers(lng = data$longitud[i], lat = data$latitud[i], 
                         radius = 2.5, color = "#FFA07A", fillOpacity = 0.4,  
                         popup = paste("ID: ", data$id_registro[i], "<br>",
                                       "Municipio: ", data$municipio[i], "<br>",
                                       "Fecha: ", data$fecha[i])) 
    }
  })
}

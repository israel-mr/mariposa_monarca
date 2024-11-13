map_ui <- function() {
  tabPanel("Mapa interactivo",
           div(class = "outer",
               tags$head(
                 includeCSS("styles.css")  
               ),
               leafletOutput("map_monarca", width = "100%", height = "100%")
           )
  )
}
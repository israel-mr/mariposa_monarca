map_ui <- function() {
  tabPanel("Mapa interactivo",
           div(class = "outer",
               tags$head(
                 includeCSS("styles.css")  
               ),
               leafletOutput("map_monarca", width = "100%", height = "100%")
           )
           
           #,   
           
           # absolutePanel(id = "controls", class = "panel panel-default",
           #               top = 75, left = 55, width = 250, fixed = TRUE,
           #               draggable = TRUE, height = "auto"),
           # absolutePanel(id = "timelaps", class = "panel panel-default",
           #               top = 75, left = 55, width = 250, fixed = TRUE,
           #               draggable = TRUE, height = "auto")
  )
}
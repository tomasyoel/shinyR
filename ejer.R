library(shiny)
library(ggplot2)


asistencias <- c(10, 15, 12, 20, 18, 22, 17, 25, 14, 19, 21, 16, 23, 24, 13, 11, 9, 8, 7, 6, 5, 4, 3, 2, 1)

# Define UI
ui <- fluidPage(
  titlePanel("Asistencias a Curso de Inteligencia de Negocios"),
  sidebarLayout(
    sidebarPanel(
      sliderInput("bins", "Número de contenedores:", min = 1, max = 20, value = 10)
    ),
    mainPanel(
      plotOutput("histogram")
    )
  )
)


server <- function(input, output) {

  output$histogram <- renderPlot({
    ggplot(data.frame(asistencias), aes(x = asistencias)) +
      geom_histogram(binwidth = diff(range(asistencias)) / input$bins,
                     fill = "skyblue", color = "black") +
      labs(title = "Histograma de Asistencias",
           x = "Asistencias", y = "Frecuencia")
  })
}


shinyApp(ui = ui, server = server)

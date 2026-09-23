

library(shiny)

# 1. UI - Defines the layout and appearance
ui <- fluidPage(
  titlePanel("My First Shiny App"),
  sidebarLayout(
    sidebarPanel(
      sliderInput("num", "Choose a number:", min = 1, max = 1000, value = 500)
    ),
    mainPanel(
      plotOutput("myPlot")
    )
  )
)

# 2. Server - Defines the logic and reactivity
server <- function(input, output) {
  output$myPlot <- renderPlot({
    hist(rnorm(input$num), col = "purple", main = "Histogram")
  })
}

# 3. Run the app
shinyApp(ui = ui, server = server)



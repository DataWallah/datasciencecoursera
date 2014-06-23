#
# serrver code for Shiny app for Coursera Developing Data Products project
#
library(shiny)


# Server logic to put out the required numbers
shinyServer(function(input, output) {
  # Generate the required number of random numbers
  output$summary <- renderPrint({
    runif(input$obs)
  })
})
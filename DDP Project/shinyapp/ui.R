#
# ui for Shiny app for Coursera Developing Data Products project
#
library(shiny)

# define the UI
shinyUI(pageWithSidebar(
  
  # Application title
  headerPanel("Random Number Generator"),
  
  # Sidebar with controls to select a dataset and specify the number
  # of observations to view
  sidebarPanel(
    sliderInput("obs", 
                "Number of Random Numbers you want:", 
                min = 1,
                max = 10, 
                value = 1),
    helpText("Slide to a number between 1 and 10 and the panel on the right",
             "will display the desired number of random numbers between 0 and 1")
  ),
  
  # Show the random numbers generated
  mainPanel(
    verbatimTextOutput("summary")
  )
))
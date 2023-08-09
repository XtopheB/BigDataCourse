library(shiny)
library(ggplot2)

# The  trend is initaly chosen at random 
dynamicValue = function(){
  runif(1, min = -1, max =1.5)
}


# Define the UI
ui <- fluidPage(
  # Application title
  titlePanel("Playing with regression line"),
  tags$h5("Christophe Bontemps (SIAP)"),
  tags$h5("August 2023"),
  
  #titlePanel("Scatter Plot with Regression Line"),
  sidebarLayout(
    sidebarPanel(
      HTML("<h4><font color='#2874A6'> Play with Y = \u03B20 + \u03B21  X </font></h4>"),
       sliderInput("coef_b0", "Coefficient \u03B20", min = -2, max = 2, value = -0.5, step = 0.1),
       sliderInput("coef_b1", "Coefficient \u03B21", min = -1, max = 2, value = dynamicValue(), step = 0.1),
      br(),
      HTML("<h4><font color='#2874A6'> Let's see the \"right\" result </font></h4>"),
      checkboxInput("show_regression", "Show Regression Line", value = FALSE)
    ),
    mainPanel(
      plotOutput("scatterplot")
    )
  )
)

#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

  # Application title
  titlePanel("Cars Performance Analysis"),

  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
        sliderInput("horses", "Horse Power:", min = 52, max = 335, value = 52),
        br(),
        helpText("How to Use"),
        br(),
        helpText("Use the slider to choose maximum horse power the cars can have."),
        helpText("The plot shows the relation between the cars weights, in 1000 lbs, and the distances they can travel, in miles/gallon."),
        helpText("The plot fits a linear model by the cars number of cylinders."),
        br()
    ),

    # Show a plot of the generated distribution
    mainPanel(
       plotOutput("carsPlot")
    )
  )
))

#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(ggplot2)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {

  output$carsPlot <- renderPlot({

      mtcars$cyl <- as.factor(mtcars$cyl)

      p <- ggplot(mtcars[mtcars$hp <= input$horses, ], aes(x=wt, y=mpg, color=cyl))
      p <- p + geom_point() + geom_smooth(method="lm")
      p <- p + xlab("Car's Weight (1000 lbs)") + ylab("Distance Traveled (Miles/Gallon)")
      p

  })

})

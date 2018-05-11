### Exercise 3 ###

library(shiny)
library(ggplot2)
# Create a shiny server that creates a scatterplot. 

server <- function(input, output) {
# It should take as an input the x_var, y_var, color, and size
# Save the result of `renderPlot` to output$scatter

    # Store x and y values to plot


    # Store the title of the graph in a variable
    title <- "MPG Data"
    
    # Create ggplot scatter
    # Use reactive expression b/c will be re-evaluated each time input changes
    output$scatter <- renderPlot({
        x <- mpg[[input$xvar]]
        y <- mpg[[input$yvar]]
        plot <- ggplot(mpg) +
        geom_point(mapping = aes(x = x, y = y, color = input$color, size = input$size))
        plot
    })
}

  shinyServer(server)
  
  
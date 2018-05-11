# UI for scatterplot
library(shiny)

# Get a vector of column names (from `mpg`) to use as select inputs
select_values <- colnames(mpg)

# Create a shinyUI with a `fluidPage` layout
ui <- fluidPage(

  # A page header
  h1("MPG Dataset Visualization"),
  
  # Add a select input for the x variable
  textInput("xvar", "Choose X-Variable", choices = select_values),
  
  # Add a select input for the y variable
  textInput("yvar", "Choose Y-Variable", choices = select_values),

  # Add a sliderInput to set the size of each point
  sliderInput("size", "Choose Size", min = 1, max = 10, value= 3),

  # Add a selectInput that allows you to select a color from a list of choices
  selectInput("color", "Choose Color", c("Blue", "Green", "Red",
                                         "Purple")))

  plotOutput("scatter")
  
  # Plot the output with the name "scatter"
  shinyUI(ui)

  
# Exercise 1: Building a user interface
# what is shiny? b/w R studio and WWW
# single file- app.R and source other files you want to use
# multiple files- server.R (to describe R session), ui.R (to describe user interface), and source any other files you want to use

# User Interface Lecture Notes
# values retruned by layout function (using fluidPage())
# 3 types of elements:
# static content- ex. headers or paragraphs
#   p() create plain text paragraphs
#   h1/2/3() creating ## Headings
#   strong() bolded text, em() italics text
# input elements- things user interacts with ex. drop-down menu
#   need to keep track of name(key) of this element!
#   used to change what you see in your application
#   create using Shiny Applications
# output elements- things that display output from R
#   elements returned from server

# Load the `shiny` package (install it in the R terminal if you haven't already)
library(shiny)

# Define a new `ui` variable. This variable should be assigned a `fluidPage()` 
# layout, which should be passed the following:
ui <- fluidPage(

  # A top level header: "First Shiny Website"
  h1("First Shiny Website"),

  # A Paragraph, describing your excitement: include some `strong` text
  p("I am", strong("so"), "excited to finally create a UI within R!"),

  # An image with this `src`
  # https://media2.giphy.com/media/l3q2Ip7FrmPE33EiI/giphy.gif
  img("are you excited?", src= 'https://media2.giphy.com/media/l3q2Ip7FrmPE33EiI/giphy.gif'),
  
  # Another paragraph about a slider: include some `em` text
  p("You can use this", em("super cool"), "slider to show how", em("excited"), "you are."),
  
  # A slider with an appropriate label, min of 10, max of 100, value of 50  
  sliderInput("excitement bar", "excitement bar", min = 10, max = 100, value = 50))


# Define a `server` function that accepts an input and an output
# At this point, don't do anything in the function
# This function should perform the following:
server <- function(input, output) {}


# Create a new `shinyApp()` using the above ui and server
shinyApp(ui = ui, server = server)

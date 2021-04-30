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
    titlePanel("Visuals for Large Number Theorem"),

    # Sidebar with a slider input for sample size
    # and numeric input for number of samples
    sidebarLayout(
        sidebarPanel(
            sliderInput("sample_size",
                        "A Size of Sample:",
                        min = 10,
                        max = 200,
                        value = 30),
            numericInput("number_of_samples",
                         "Number of samples",
                         value =100,
                         min = 100,
                         max=5000,
                         step=100)
        ),

        # Show plots of the histograms for each distribution
        mainPanel(  
            tabsetPanel(
            tabPanel("Normal Dist", plotOutput("normPlot")),
            tabPanel("Poisson Dist", plotOutput("expPlot")),
            tabPanel("Exponential Dist", plotOutput("poisPlot"))
             )
        )
    )
))

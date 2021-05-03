#
# This is the user-interface definition of a Shiny web application. 
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
    titlePanel("Visuals for Law of Large Numbers"),

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
                         "A Number of Samples",
                         value =100,
                         min = 100,
                         max=5000,
                         step=100)#,
            # selectInput("range_selection", 
            #             "Possible range restrictions",
            #             choices= c("No restrictions", 
            #                        "From 0 to 2", 
            #                        "From -10 to 10",
            #                        "From -100 to 100"))
        ),

        # Show plots of the histograms for each distribution
        mainPanel( "Here we see how sample means behave for random values drown from
                    different distributions and how well they converge to normal distribution
                    in accordance with LLN. All distributions but Cauchy have 
                    expected value as 1 for ease of comparison. The Cauchy distribution
                    does not have expected value, and its median is modified to be 1
                    for consistency.",
            tabsetPanel(
            tabPanel("Normal Dist", plotOutput("normPlot"), 
                     "A normal distribution is a well-known, well-behaved
                     case." ),
            tabPanel("Exponential Dist", plotOutput("expPlot"),
                     "Exponential distribution is skewed, and sample means converge slower
                     than for normal one. "),
            tabPanel("Poisson Dist", plotOutput("poisPlot"),
                     "Poisson distribution is skewed, and in addition its values are
                     integer numbers. It takes greater sample size to smooth out than
                     normal and exponential ones."),
            tabPanel("Cauchy Dist", plotOutput("cauchyPlot"),
                     "Cauchy distribution does not have an expected value
                     which is required for LLN to work.  We can see how its 
                     range is mostly increasing with bigger sample sizes 
                     and more samples.")
             )
        )
    )
))

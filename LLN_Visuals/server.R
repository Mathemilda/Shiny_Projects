#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {

    output$normPlot <- renderPlot({

        # generate bins based on input$bins from ui.R
        number_of_samples = 1000
        bins =30
        x   <- colMeans(matrix(rnorm(input$sample_size*input$number_of_samples), 
                             nrow=input$sample_size, ncol=input$number_of_samples))
        bins <- seq(min(x), max(x), length.out = bins + 1)

        # draw the histogram with the specified number of bins
        hist(x, breaks = bins, col = 'darkblue', border = 'white',
             main = "Histogram of sample means", xlab = "Sample means")

    })
        output$expPlot <- renderPlot({

        # generate bins based on input$bins from ui.R
        number_of_samples = 1000
        bins =30
        x   <- colMeans(matrix(rexp(input$sample_size*input$number_of_samples), 
                             nrow=input$sample_size, ncol=input$number_of_samples))
        bins <- seq(min(x), max(x), length.out = bins + 1)

        # draw the histogram with the specified number of bins
        hist(x, breaks = bins, col = 'salmon', border = 'white',
             main = "Histogram of sample means", xlab = "Sample means")

    })
                output$poisPlot <- renderPlot({

        # generate bins based on input$bins from ui.R
        number_of_samples = 1000
        bins =30
        x   <- colMeans(matrix(rpois(input$sample_size*input$number_of_samples,
                                   lambda=1), 
                             nrow=input$sample_size, ncol=input$number_of_samples))
        bins <- seq(min(x), max(x), length.out = bins + 1)

        # draw the histogram with the specified number of bins
        hist(x, breaks = bins, col = 'darkgoldenrod', border = 'white',
             main = "Histogram of sample means", xlab = "Sample means")

    })
                output$cauchyPlot <- renderPlot({

        # generate bins based on input$bins from ui.R
        number_of_samples = 1000
        bins =30
        x   <- colMeans(matrix(rcauchy(input$sample_size*input$number_of_samples), 
                             nrow=input$sample_size, ncol=input$number_of_samples))
        bins <- seq(min(x), max(x), length.out = bins + 1)

        # draw the histogram with the specified number of bins
        hist(x, breaks = bins, col = 'hotpink', border = 'white',
             main = "Histogram of sample means", xlab = "Sample means")

    })

})

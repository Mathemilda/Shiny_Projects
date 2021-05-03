#
# This is the server logic of a Shiny web application. 
#
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {

    output$normPlot <- renderPlot({

        bin.n = 25
        # generate data based on input$sample_size and input$number_of_samples from 
        # ui.R and compute means
        xnorm   <- colMeans(matrix(rnorm(input$sample_size*input$number_of_samples,
                                   mean = 1), 
                            nrow=input$sample_size, ncol=input$number_of_samples))
        bins <- seq(min(xnorm), max(xnorm), length.out = bin.n + 1)

        # draw the histogram with the computed means
        hist(xnorm, breaks = bins, col = 'lightblue', border = 'darkblue',
             main = "Histogram of sample means", xlab = "Sample means")

    })
        output$poisPlot <- renderPlot({

        bin.n = 25
        # Repeat data generation with a next distribution as before
        xpois   <- colMeans(matrix(rpois(input$sample_size*input$number_of_samples,
                                   lambda=1), 
                             nrow=input$sample_size, ncol=input$number_of_samples))
        bins <- seq(min(xpois), max(xpois), length.out = bin.n + 1)

        # draw the histogram with the computed means
        hist(xpois, breaks = bins, col = 'palegreen', border = "darkgreen",
             main = "Histogram of sample means", xlab = "Sample means")

    })
                output$expPlot <- renderPlot({

        bin.n = 25
        # Repeat data generation with a next distribution as before
        xexp   <- colMeans(matrix(rexp(input$sample_size*input$number_of_samples), 
                             nrow=input$sample_size, ncol=input$number_of_samples))
        bins <- seq(min(xexp), max(xexp), length.out = bin.n + 1)

        # draw the histogram with the computed means
        hist(xexp, breaks = bins, col = 'darkgoldenrod', border = 'brown4',
             main = "Histogram of sample means", xlab = "Sample means")

    })
                output$cauchyPlot <- renderPlot({

        bin.n = 50
        # Repeat data generation with a next distribution as before
        xcau   <- colMeans(matrix(rcauchy(input$sample_size*input$number_of_samples)+1, 
                             nrow=input$sample_size, ncol=input$number_of_samples))
        bins <- seq(min(xcau), max(xcau), length.out = bin.n + 1)

        # draw the histogram with the computed means
        hist(xcau, breaks = bins, col = 'hotpink', border = 'maroon',
             main = "Histogram of sample means", xlab = "Sample means")

    })

})

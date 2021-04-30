library(shiny)

ui <- fluidPage(
    
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
            tabPanel("Exponential Dist", plotOutput("poisPlot")),
            tabPanel("Cauchy Dist", plotOutput("cauchyPlot"))
             )
        )
    )
)


server <- function(input, output) {
    
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

}

shinyApp(ui = ui, server = server)
library(shiny)

shinyUI(pageWithSidebar(
        headerPanel('Prime number detection'),
        sidebarPanel(
                h5('A prime number is an integer bigger than 1 and has only two positive divisors, which are 1 and itself.'),
                
                h5('Find more about prime number by the', a(href='http://en.wikipedia.org/wiki/Prime_number','wiki link'), '.'),
                sliderInput('input1','Input an integer between 0 and 100', 
                            value=50, min=0, max=100, step=1),
                submitButton('Submit')
        ),
        mainPanel(
                h3('Results of prime number detection'),
                h4('You entered'),
                textOutput("inputValue"),
                h4('Is the input integer a prime number?'),
                textOutput("outputResult")
        )
))
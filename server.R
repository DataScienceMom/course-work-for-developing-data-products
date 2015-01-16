library(shiny)

predictF <- function(input1){
        if (input1 <= 1){
                paste('Input', toString(input1),'is Not a prime number.', sep=' ')
        }
        else if (input1 ==2 ){
                paste('Input', toString(input1),'is a prime number.', sep=' ')
        } 
        else {
                value <- 1 # 1: prime  0: not prime
                m<-ceiling(sqrt(input1))
                
                for (k in 2:m){
                        if (input1%%k==0){
                                value=0
                                break
                        }
                }
                
                if (value==1){
                        paste('Input', toString(input1),'is a prime number.', sep=' ')
                }
                else {
                        paste('Input', toString(input1),'is Not a prime number.', sep=' ')
                }
        }
}

shinyServer(
        function(input,output){
                output$inputValue <- renderText({input$input1})
                output$outputResult <- renderText({predictF(input$input1)
                })
        }
)
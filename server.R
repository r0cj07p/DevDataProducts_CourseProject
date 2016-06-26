library(shiny) 
library(datasets)  

data(mtcars)  
fit <- lm(mpg ~ hp+disp+cyl+wt, data=mtcars)  
MPGest <- function(vehData) {  
        predict(fit,newdata=vehData)  
}  

shinyServer(  
        function(input, output) {  
                output$hpIn <- renderPrint({input$hp})  
                output$dispIn <- renderPrint({input$disp})  
                output$cylIn <- renderPrint({input$cyl})  
                output$wtIn <- renderPrint({input$wt})
                output$MPGhist <- renderPlot({  
                        hist(mtcars$mpg, main='MPG Estimation', xlab='Estimated Miles per Gallon (MPG)', col='red')  
                        vehData <- data.frame(hp = input$hp, disp = input$disp, cyl = input$cyl, wt = input$wt)  
                        MPG <- MPGest (vehData)  
                        lines(c(MPG, MPG), c(0, 11),lty=2, lwd=2, col="black")  
                        text(32, 12, font=2, cex=2, paste("MPG = ", round(MPG, 1)))  
                        })  
        }      
)  
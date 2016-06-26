library(shiny)  

shinyUI(  
        pageWithSidebar(  
                headerPanel("Miles Per Gallon (MPG) Estimator"),  
                sidebarPanel(  
                        sliderInput('hp', 'Gross Horsepower',value = 200, min = 50, max = 400, step = 10,),  
                        sliderInput('disp', 'Displacement (in cubic inches)', value = 200, min = 50, max = 500, step = 5,),
                        sliderInput('cyl', 'Number of Cylinders',value = 4, min = 4, max = 8, step = 2,),  
                        sliderInput('wt', 'Approximate Vehicle Weight (lbs x 1000)',value = 3, min = 1, max = 6.0, step = 0.1,)  
                ),  
                mainPanel(  
                        h3("Results"),  
                        h4("Gross Horsepower selected: "),  
                        verbatimTextOutput("hpIn"),  
                        h4("Displacement (cu. in.) selected: "),  
                        verbatimTextOutput("dispIn"),
                        h4("Number of Cylinders selected: "),
                        verbatimTextOutput("cylIn"),
                        h4("Approx Veh Weight (lbs. x 1000) selected: "),  
                        verbatimTextOutput("wtIn"),  
                        plotOutput('MPGhist')  
                )  
        )  
)  
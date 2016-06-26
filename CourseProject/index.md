---
title       : A Shiny App for Estimating Miles per Gallon in Autombiles
subtitle    : A Course Project for "Developing Data Products," part of Coursera's Data Science Specialization 
author      : Dave Moody
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## About the App

This Shiny app, located at http://r0cj07p.shinyapps.io/CourseProject is called "Miles per Gallon (MPG) Estimator."
It gives users a tool for calculating an estimate of a vehicle's expected MPG by entering other specific 
information about a given vehicle, including:

- The vehicle's horsepower (hp)
- The engine displacement in cubic inches (disp)
- The number of cylinders in the engine (cyl)
- The vehicle's weight (wt)

---

## How to Use the App

Once the app is loaded, the user will see 4 sliders on the left hand side of the screen, each one corresponding
to one of the aforementioned vehicle characteristics.  The user uses their mouse to move each slider to reflect 
the desired value for each parameter.  The values go from lowest to highest as you move the sliders from left 
to right, and the current value for each parameter is shown in the field to the right of each slider. 

When all sliders are set to the user's preference, the histogram at the bottom of the screen will display the 
estimated MPG for a vehicle with those characteristics in bold print.  A vertical dashed line will also mark the 
estimated MPG at its place on the X axis of the histogram.

---

## The Data and Linear Model Used for the App Build

The dataset used for the app build was the "mtcars" dataset, which is included with the "datasets" library in R.
The data in this set was extracted from the 1974 Motor Trend US magazine, and comprises fuel consumption and 10 
aspects of automobile design and performance for 32 automobiles (1973-74 models).  The dataset can be loaded with 
the following R commands:

```r
library(datasets)
data(mtcars) 
```

In order for the app to perform the required MPG calculation, a linear regression model was fit using the MPG 
column of the dataset as the outcome variable, and the columns corresponding to the 4 input characterisctics as 
predictors:

```r
fit <- lm(mpg ~ hp+disp+cyl+wt, data=mtcars) 
```

---
## Other Supporting Info

For more information on the rationale for the chosen predictor variables for this app, a more detailed exploratory 
and regression analysis of vehicle characteristics with high correlations to MPG was previously performed on this 
dataset, and the results can be reviewed here: http://rpubs.com/r0cj07p/191978 

The R code used to build the app can be viewed here:  http://github.com/r0cj07p/DevDataProducts_CourseProject

 

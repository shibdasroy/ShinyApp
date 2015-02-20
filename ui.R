shinyUI(
  pageWithSidebar(
    headerPanel("Cars Prediction"),
    
    sidebarPanel(
      p('This application predicts the weight, given the miles per gallon, for a car based on a linear regression model built on the mtcars dataset.'),
      h4('Please enter the miles per gallon (between 1 and 40):'),
      numericInput('mpg','Miles per gallon',15,min=1,max=40,step=0.1)
    ),
    mainPanel(
      h3('Results of Prediction'),
      h4('You entered:'),
      verbatimTextOutput("inputValue"),
      h4('Which predicts the weight to be:'),
      verbatimTextOutput("prediction"),
      h3('Linear Regression Model'),
      h4('The prediction is marked with red dot in the plot:'),
      plotOutput("newPlot")
    )
  )
)
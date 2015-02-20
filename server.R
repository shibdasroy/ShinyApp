data(mtcars)
fit <- lm(wt~mpg,data=mtcars)

shinyServer(
  function(input,output) {
    answer <- reactive({predict(fit,newdata=data.frame(mpg=input$mpg))})
    output$inputValue <- renderPrint({input$mpg})
    output$prediction <- renderPrint({answer()})
    output$newPlot <- renderPlot({
      plot(mtcars$mpg,mtcars$wt,pch=19,xlab="Miles per gallon",ylab="Weight",xlim=c(0,40),ylim=c(0,6))
      abline(fit)
      points(input$mpg,answer(),col='red',pch=19)
      })
  }
)
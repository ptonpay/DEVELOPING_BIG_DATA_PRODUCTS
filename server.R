library(shiny)
library(randomForest)
set.seed(71)
iris.rf <- randomForest(Species ~ ., data=iris, importance=TRUE, proximity=TRUE)

shinyServer(
  function(input, output) {

    output$species <- reactive(predict(iris.rf, newdata = data.frame(Sepal.Length=input$sl,Sepal.Width=input$sw,Petal.Length=input$pl,Petal.Width=input$pw)))
}
)

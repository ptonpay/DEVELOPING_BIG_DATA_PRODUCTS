library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Species prediction!"),

  sidebarPanel(
      h5('Dataset used   - iris.'),
      h6('This famous iris data set gives the measurements in centimeters of the variables sepal length and width and petal length and width, respectively, for 50 flowers from each of 3 species of iris. The species are Iris setosa, versicolor, and virginica.'),
      h5('Algorithm used - RandomForest'),
      h6('Based on the values of Sepal Length, Sepal Width, Petal Length and Petal Width the model would predict whether the species is one of setosa, versicolor or virginica' ),
      numericInput('sl', "Sepal Length", value=0, min = 0, max = 200, step=0.1),
      numericInput('sw', "Sepal Width", value=0 , min = 0, max = 200, step=0.1),
      numericInput('pl', "Petal Length", value=0 , min = 0, max = 200, step=0.1),
      numericInput('pw', "Petal Width", value=0 , min = 0, max = 200,step=0.1),
      submitButton("Predict")
  ),
  mainPanel(
      p('Predicted Species'),
      textOutput("species")
  )
))

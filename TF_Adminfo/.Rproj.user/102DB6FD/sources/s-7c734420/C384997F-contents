Modelo<-{
  tags$head(tags$title("Modelo Predictivo"))
  tags$body(
    fluidRow(
      column(12, align="center",
        tags$h2("Modelo Predictivo"),
        textInput("idTextFor","Ingresa el texto a analizar en inglés")
      ),
      column(6, align="center",
        tags$h5("Contrastación con Diccionario de Datos"),
        verbatimTextOutput("idPredictD")
      ),
      column(6, align="center",
        tags$h5("Support Vector Machine"),
        verbatimTextOutput("idPredictM")
      )
    )
  )
}
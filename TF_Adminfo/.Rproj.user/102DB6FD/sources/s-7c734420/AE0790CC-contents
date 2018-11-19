preprocesamiento<-{
  sidebarLayout(
    sidebarPanel(    
      h3("Limpiar texto para análisis"),
      h5("*La visualización puede demorar unos segundos."),
      radioButtons("idLimpia","Limpiar texto para análisis",
                   choices = c("SI"=1, "NO"=2), selected = 2),
      radioButtons("idAnaliza","Mostrar sentimiento encontrado",
                    choices = c("SI"=1, "NO"=2), selected = 2)
    ),
    mainPanel(
      tableOutput("idPreData")
    )
  )
}
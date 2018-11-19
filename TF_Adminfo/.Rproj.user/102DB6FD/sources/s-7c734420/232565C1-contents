library(shiny)
library(shinythemes)
library(shinydashboard)

library(stringr)
library(ggplot2)
library(plotly)
library(plyr)
library(jsonlite)
library(rvest)
library(dplyr)
library(twitteR)
library(sqldf)
library(tm)
library(SnowballC)
library(wordcloud)
library(dygraphs)
library(caTools)
library(caret)
library(e1071)
library(SentimentAnalysis)
library(mailR)

source("www/TabScripts/Presentacion.R")
source("www/TabScripts/Recoleccion.R")
source("www/TabScripts/Preprocesamiento.R")
source("www/TabScripts/Exploracion.R")
source("www/TabScripts/Modelo.R")
source("www/TabScripts/Visualizacion.R")

source("www/Scripts/Prediction.R")
source("www/Scripts/Consultas.R")
source("www/Scripts/Correo.R")

ui <- fluidPage(theme=shinytheme("slate"),
  tags$head(tags$title("Proyecto de Fin de Curso")),
  tabsetPanel(
    tabPanel("Presentación",presentacion),
    tabPanel("Recolección",recoleccion),
    tabPanel("Preprocesamiento",preprocesamiento),
    tabPanel("Exploración",exploracion),
    tabPanel("Modelo",Modelo),
    tabPanel("Visualización",visualizacion)
  )
)

server <- function(input, output) {
  
  output$idPredictD = renderText({
    s<-input$idTextFor
    a = DicPredict(s)
  })
  
  dtTwitter<-tweets[,-c(3,5:8,15,17:21)]
  
  output$idTabTwitter=renderDataTable({
    if(is.null(dtTwitter)){return()}
    dtTwitter
  })
  
  dtFacebook<-facebook[,-(3:8)]
  
  output$idTabFacebook=renderDataTable({
    if(is.null(dtFacebook)){return()}
    dtFacebook
  })
  
  output$idDescargaT<-downloadHandler(
    filename = function(){
      paste("Twitter",Sys.Date(),".csv",sep="")
    },
    content = function(file){
      write.csv(tweets,file)
    }
  )
  
  output$idDescargaF<-downloadHandler(
    filename = function(){
      paste("Facebook",Sys.Date(),".json",sep="")
    },
    content = function(file){
      write_json(facebook,file)
    }
  )
  
  observeEvent(input$idEnviaT,
                {
                  mail<-input$idCorreoT
                  envCorreo(mail,"T")
                })
  
  observeEvent(input$idEnviaF,
               {
                 mail<-input$idCorreoF
                 envCorreo(mail,"F")
               })
  
  Data<-reactive({
    toRet<-tweets$Tweet.Text
    sent<-CalcSentimentD(tweets$Tweet.Text)
    if (as.numeric(input$idLimpia)==1){
      toRet<-LimpiaDatos(toRet)
    }
    if (as.numeric(input$idAnaliza)==1){
      toRet<-data.frame(toRet,sent)
    }
    return(toRet)
  })
  
  output$idPreData = renderTable({
    if(is.null(Data())){return()}
    Data()
  })
  
  #Consultas
  output$Consulta1=renderDataTable({ dt1 })
  output$Consulta2=renderDataTable({ dt2 })
  output$Consulta3=renderDataTable({ dt3 })
  output$Consulta4=renderDataTable({ dt4 })
  output$Consulta5=renderDataTable({ dt5 })
  output$Consulta6=renderDataTable({ dt6 })
  output$Consulta7=renderDataTable({ dt7 })
  output$Consulta8=renderDataTable({ dt8 })
  output$Consulta9=renderDataTable({ dt9 })
  output$Consulta10=renderDataTable({ dt10 })
  output$Consulta11=renderDataTable({ dt11 })
  output$Consulta12=renderDataTable({ dt12 })
  output$Consulta13=renderDataTable({ dt13 })
  
  #Graficos
  output$Grafico1=renderPlot(
    ggplot(data=dt1)+aes(x=dt1$Full.Name, y=dt1$Retweets, color=Full.Name)+
             geom_bar(stat="identity")+coord_flip()+ylab("Cantidad de Retweets")+ xlab("Usuario")
  )
  output$Grafico2=renderPlot(
    ggplot(data=dt2)+
      aes(x=dt2$Full.Name, y=dt2$Favorites, color=Full.Name)+
      geom_bar(stat="identity")+coord_flip()+ylab("Cantidad de Favoritos obtenidos")+ xlab("Usuario")
  )
  output$Grafico3=renderPlotly(
    plot_ly(data=dt3,x=dt3$Date,y=dt3$Cantidad,type='scatter',mode='lines')
  )
  output$Grafico4=renderPlot(
    ggplot(data=dt4)+
      aes(x=dt4$Screen.Name, y=dt4$Followers, size=3, color=Screen.Name, shape=Screen.Name)+
      geom_point()+ylab("Cantidad de Seguidores")+ xlab("Usuario")
  )
  output$Grafico5=renderPlot(
    ggplot(data=dt5)+
      aes(x=dt5$Screen.Name, y=dt5$CantidadCaracteres, size=3, color=Screen.Name, shape=Screen.Name)+
      geom_point()+coord_flip()+ylab("Cantidad de caracteres usados")+ xlab("Usuario")
  )
  output$Grafico6=renderPlotly(
    plot_ly(data=dt6,x=dt6$Date,y=dt6$CantidadCaracteres,type='scatter',mode='lines')
  )
  output$Grafico7=renderPlot(
    ggplot(data=dt7)+
      aes(x=dt7$App, y=dt7$VecesUsada, color=App, label=App)+
      geom_bar(stat="identity")+coord_flip()+ylab("Veces Usado")+ xlab("Aplicación")
  )
  output$Grafico8=renderPlot(
    ggplot(data=dt8)+
      aes(x=dt8$Tipos, y=dt8$Cantidad, color=Tipos, label=Tipos)+
      geom_bar(stat="identity")+ylab("Cantidad")+ xlab("Tipos")
  )
  output$Grafico9=renderPlot(
    ggplot(data=dt9)+
      aes(x=dt9$Screen.Name, y=dt9$CantidadTweets, color=Screen.Name, label=Screen.Name)+
      geom_bar(stat="identity")+coord_flip()+ylab("Cantidad")+ xlab("Usuarios")
  )
  output$Grafico10=renderPlot(
    ggplot(data=dt10)+
      aes(x=dt10$Location.1, y=dt10$CantidadTweets, color=Location.1, label=Location.1)+
      geom_bar(stat="identity")+coord_flip()+ylab("Cantidad")+ xlab("Ubicaciones")
  )
  output$Grafico11=renderPlotly(
    plot_ly(data=dt11,x=dt11$User.Since,y=dt11$CantRegistros,type='scatter',mode='lines')
  )
  output$Grafico12=renderPlot(
    ggplot(data=dt12)+
      aes(x=dt12$Tipos12, y=dt12$Cantidad, color=Tipos12, label=Tipos12)+
      geom_bar(stat="identity")+ylab("Porcentaje")+ xlab("Tipo")
  )
  output$Grafico13=renderPlot(
    ggplot(data=dt13)+
      aes(x=dt13$Tipos13, y=dt13$Cantidad, color=Tipos13, label=Tipos13)+
      geom_bar(stat="identity")+ylab("Porcentaje")+ xlab("Factor")
  )
  
}

# Run the application 
shinyApp(ui = ui, server = server)


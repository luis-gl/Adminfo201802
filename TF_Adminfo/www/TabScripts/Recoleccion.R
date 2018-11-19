recoleccion<-{
  dashboardPage(dashboardHeader(title="Archivos utilizados"),
      dashboardSidebar(
        sidebarMenu(
                    menuSubItem("Twitter",tabName="Twitter"),
                    menuSubItem("Facebook",tabName="Facebook")
                    )
      ),
      dashboardBody(tabItems(
        tabItem(tabName="Twitter",
                tags$h4("Dataset recolectado de Twitter"),
                tags$h5("*Modificado para una correcta visualización del dataset"),
                dataTableOutput("idTabTwitter"),
                h5("Haga click en Descargar si desea tener el dataset completo"),
                downloadButton("idDescargaT","Descargar"),
                textInput("idCorreoT","O lo puede enviar a su correo"),
                actionButton("idEnviaT","Enviar")
                ),
        tabItem(tabName="Facebook",
                tags$h4("Dataset recolectado de Facebook"),
                tags$h5("*Modificado para una correcta visualización del dataset"),
                dataTableOutput("idTabFacebook"),
                h5("Haga click en Descargar si desea tener el dataset completo"),
                downloadButton("idDescargaF","Descargar"),
                textInput("idCorreoF","O lo puede enviar a su correo"),
                actionButton("idEnviaF","Enviar")
                )
        )
      )
  )
}

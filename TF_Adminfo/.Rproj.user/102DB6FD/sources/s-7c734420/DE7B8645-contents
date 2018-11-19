exploracion<-{
  dashboardPage(dashboardHeader(title="Consultas"),
                dashboardSidebar(
                  sidebarMenu(
                    menuSubItem("Consulta 1",tabName="Cons1"),
                    menuSubItem("Consulta 2",tabName="Cons2"),
                    menuSubItem("Consulta 3",tabName="Cons3"),
                    menuSubItem("Consulta 4",tabName="Cons4"),
                    menuSubItem("Consulta 5",tabName="Cons5"),
                    menuSubItem("Consulta 6",tabName="Cons6"),
                    menuSubItem("Consulta 7",tabName="Cons7"),
                    menuSubItem("Consulta 8",tabName="Cons8"),
                    menuSubItem("Consulta 9",tabName="Cons9"),
                    menuSubItem("Consulta 10",tabName="Cons10"),
                    menuSubItem("Consulta 11",tabName="Cons11"),
                    menuSubItem("Consulta 12",tabName="Cons12"),
                    menuSubItem("Consulta 13",tabName="Cons13")
                  )
                ),
                dashboardBody(tabItems(
                  tabItem(tabName="Cons1",
                          tags$h4("Los 5 usuarios con mas Retweets"),
                          dataTableOutput("Consulta1")
                  ),
                  tabItem(tabName="Cons2",
                          tags$h4("Los 5 usuarios con mas Favoritos"),
                          dataTableOutput("Consulta2")
                  ),
                  tabItem(tabName="Cons3",
                          tags$h4("Cantidad de tweets publicados por fecha"),
                          dataTableOutput("Consulta3")
                  ),
                  tabItem(tabName="Cons4",
                          tags$h4("Top 5 usuarios con mas seguidores"),
                          dataTableOutput("Consulta4")
                  ),
                  tabItem(tabName="Cons5",
                          tags$h4("Los 10 usuarios que han escrito más de 500 caracteres en su publicacion"),
                          dataTableOutput("Consulta5")
                  ),
                  tabItem(tabName="Cons6",
                          tags$h4("Cantidad de caracteres usados por dia"),
                          dataTableOutput("Consulta6")
                  ),
                  tabItem(tabName="Cons7",
                          tags$h4("Aplicaciones mas usadas"),
                          dataTableOutput("Consulta7")
                  ),
                  tabItem(tabName="Cons8",
                          tags$h4("Cantidad de Usuarios con y sin Website"),
                          dataTableOutput("Consulta8")
                  ),
                  tabItem(tabName="Cons9",
                          tags$h4("Usuarios que publicaron mas tweets"),
                          dataTableOutput("Consulta9")
                  ),
                  tabItem(tabName="Cons10",
                          tags$h4("Ubicaciones en las que se publicarion mas tweets"),
                          dataTableOutput("Consulta10")
                  ),
                  tabItem(tabName="Cons11",
                          tags$h4("Cantidad de usuarios registrados por fecha"),
                          dataTableOutput("Consulta11")
                  ),
                  tabItem(tabName="Cons12",
                          tags$h4("Porcentaje de usuarios que tienen cuenta verificada o no"),
                          dataTableOutput("Consulta12")
                  ),
                  tabItem(tabName="Cons13",
                          tags$h4("Porcentaje de Retweets y Favoritos respecto al total de publicaciones"),
                          dataTableOutput("Consulta13")
                  )
                )
                )
  )
}
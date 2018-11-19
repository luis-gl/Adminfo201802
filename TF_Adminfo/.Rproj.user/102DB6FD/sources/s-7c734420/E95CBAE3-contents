tweets<-read.csv("www/Datasets/Tweets.csv",sep=",")
facebook<-as.data.frame(fromJSON("www/Datasets/Facebook.json"))

## Gráfico 1: Los 5 usuarios con más Retweets
dt1<-sqldf("select \"Full.Name\", Retweets 
           from tweets
           group by \"Full.Name\"
           order by Retweets desc
           limit 5")


## Gráfico 2: Los 5 usuarios con más Favoritos
dt2<-sqldf("select \"Full.Name\", Favorites
           from tweets
           group by \"Full.Name\"
           order by Favorites desc
           limit 5")


## Gráfico 3: Cantidad de tweets publicados por fecha
dt3<-sqldf("select Date, count(*) as Cantidad from tweets group by Date")


## Gráfico 4: Top 5 usuarios con más seguidores
dt4<-sqldf("select \"Screen.Name\", Followers
           from tweets
           group by \"Screen.Name\"
           order by Followers desc
           limit 5")


## Gráfico 5: Los 10 usuarios que han escrito más de 500 caracteres en su publicación
dt5<-sqldf("select \"Screen.Name\", length(\"Tweet.Text\") as CantidadCaracteres
           from tweets
           where length(\"Tweet.Text\")>=500
           group by \"Screen.Name\"
           order by CantidadCaracteres desc
           limit 5")


## Gráfico 6: Cantidad de caracteres usados por día
dt6<-sqldf("select Date, sum(length(\"Tweet.Text\")) as CantidadCaracteres
           from tweets group by Date")


## Gráfico 7: Aplicaciones más usadas
dt7<-sqldf("select App, count(*) as VecesUsada from tweets
           group by App order by count(*) desc
           limit 5")


## Gráfico 8: Cantidad de Usuarios con y sin Website
a<-sqldf("select count(*) as Cantidad from tweets where Website != ''")
b<-sqldf("select count(*) as Cantidad from tweets where Website = ''")
dt8<-rbind(a,b)
Tipos<-c("Con Website","Sin Website")
dt8<-cbind(Tipos,dt8)


## Gráfico 9: Usuarios que publicaron más tweets
dt9<-sqldf("select \"Screen.Name\", count(*) as CantidadTweets from tweets group by \"Screen.Name\" order by count(*) desc limit 5")


## Gráfico 10: Ubicaciones en las que se publicarion más tweets
dt10<-sqldf("select \"Location.1\", count(*) as CantidadTweets from tweets where \"Location.1\" != '' group by \"Location.1\" order by count(*) desc limit 5")


## Gráfico 11: Cantidad de usuarios registrados por fecha
tweets$User.Since<-as.Date(tweets$User.Since,format="%m/%d/%Y")
dt11<-sqldf("select \"User.Since\", count(*) as CantRegistros from tweets 
      group by \"User.Since\"")


## Gráfico 12: Porcentaje de usuarios que tienen cuenta verificada o no
a12<-sqldf("select count(*) as Cantidad from tweets where Verfied != ''")
b12<-sqldf("select count(*) as Cantidad from tweets where Verfied = ''")
Tipos12<-c("Verificado","No Verificado")
dt12<-rbind(a12,b12)
dt12<-cbind(Tipos12,dt12)
dt12$Cantidad<-round((dt12$Cantidad/NROW(tweets))*100,2)


## Gráfico 13: Porcentaje de Retweets y Favoritos respecto al total de publicaciones
a13<-sqldf("select count(*) as Cantidad from tweets
      where Retweets > 0")
b13<-sqldf("select count(*) as Cantidad from tweets
      where Favorites > 0")
Tipos13<-c("Retweets","Favoritos")
dt13<-cbind(Tipos13,rbind(a13,b13))
dt13$Cantidad<-round((dt13$Cantidad/NROW(tweets))*100,2)

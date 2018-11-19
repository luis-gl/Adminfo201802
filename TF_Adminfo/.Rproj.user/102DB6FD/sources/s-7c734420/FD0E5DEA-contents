envCorreo<-function(correo,dt){
  mess<-"Dataset de Twitter"
  fileAtt<-"www/Datasets/Tweets.csv"
  if (as.character(dt)=="F"){
    mess<-"Dataset de Facebook"
    fileAtt<-"www/Datasets/Facebook.json"
  }
  send.mail(from="prueba.mailr@gmail.com",
            to=correo,
            subject="Test Email",
            body=mess,
            smtp=list(host.name = "smtp.gmail.com",
                      port = 465,
                      user.name = "prueba.mailr@gmail.com",
                      passwd = "adminfo201802",
                      ssl = T),
            authenticate=T,
            attach.files=fileAtt)
}
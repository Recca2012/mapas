palette(c("#E41A1C", "#377EB8", "#4DAF4A", "#984EA3",
          "#FF7F00", "#FFFF33", "#A65628", "#F781BF", "#999999"))
source("~/Dropbox/Dissertacao/reunioes/2014-05-28/mapas/mapas.R")
shinyServer(function(input, output, session) {

  # Combine the selected variables into a new data frame
  selectedData <- reactive({
    Rate3[,c("State",input$cancer)]
    
  })
  shape2<-reactive({shape})
  output$plot1 <- renderPlot({
    plotar.mapa(shape=shape2(),dados=selectedData())
  })
  
})
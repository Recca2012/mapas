shinyUI(pageWithSidebar(
  headerPanel('Iris k-means clustering'),
  sidebarPanel(
    selectInput('cancer', 'Cancer', names(Rate3)[-c(1,2)],selected=names(Rate3)[[3]]),
    selectInput('tipo', 'Tipo de Dado', c("Quantidade","Rate","SMR"),selected="Quantidade",)
  ),
  mainPanel(
    plotOutput('plot1')
  )
))
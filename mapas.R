require(ggplot2)
require(maps)
require(grid)
require(reshape)
load(file="~/Dropbox/Dissertacao/reunioes/2014-05-28/mapas/dados.RData")
plotar.mapa<-function(shape,dados){
  banco.plotar<-merge(shape,dados,by="State")
  names(banco.plotar)[5]<-"Cancer"
  p <- ggplot() + coord_fixed()
  
  base_state <- p + geom_polygon(data=banco.plotar,title=(names(dados)[2]),#colour="white",
                                      aes(x=lon,
                                          y=lat,
                                          group=State,fill=Cancer))+ 
    scale_fill_continuous(low="steelblue",high="tomato")+
    theme(legend.position="right",
          panel.background = element_rect(fill = "white"),
          axis.title.x = element_blank(), 
          axis.text.x  = element_blank(),
          axis.title.y = element_blank(), 
          axis.text.y  = element_blank(),
          title =  element_text(size = 14, face = "bold"))
     print(base_state)
}


# 
# SMR<-Rate3
# 
# 
# for(i in names(Rate3)[-c(1:2)]){
#   SMR[,i]<-NA
#   SMR[,i]<-Rate3[,i]/(sum(Quantidade[which(!is.na(Quantidade[,i])),i])/sum(Pop[which(!is.na(Quantidade[,i])),i]))
# }
# 
# 
# 
# 
# 
# save(Pop,Pop3,Quantidade,Quantidade3,Rate,Rate3,SMR,base,shape,file="~/Dropbox/Dissertacao/reunioes/2014-05-28/mapas/dados.RData")
# SMR$State<-NULL
# names(SMR)[1]<-"State"

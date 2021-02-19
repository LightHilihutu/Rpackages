color_hex=c('#FFFFFF','#BFBFBF','#7F7F7F','#404040','#000000',
            '#FAEBD7','#458B74','#EE6A50','#FF3300','#98F5FF',
            '#FFD700','#AB82FF','#FFB5C5','#54FF9F','#4169E1')

library(ggplot2)


n=15
df=data.frame(a=seq(1,100,length.out = n),b=rep(0,n))



color_pic=ggplot()+scale_y_continuous(limits = c(-10,10))+
  geom_point(data=df,aes(x=a,y=b),
             fill=color_hex[1:n],size=7,shape=21,color=color_hex[5],stroke=2)+
  geom_text(data=data.frame(a=seq(1,100,length.out = n),b=1),aes(x=a,y=b),
            label=as.character(seq(1,15)),vjust=0,size=5,family='sans')+
  theme(panel.grid =element_blank())+
  theme(axis.text = element_blank())+
  theme(axis.ticks = element_blank())+
  theme(panel.border = element_blank())+
  theme(axis.title = element_blank())+
  theme(panel.background = element_rect(fill = color_hex[1],color=color_hex[2]))+
  theme(plot.margin = unit(c(0,0,0,0),'pt'))

gray_colors=function(n){
  color=c()
  s=seq(0,1,length.out = n)
  for(i in 1:n){
    color=c(color,gray(s[i]))
  }
  return(color)
}

save(color_hex,color_pic,gray_colors,file = '/Bioinformatics/R code/Rcolor.Rdata')


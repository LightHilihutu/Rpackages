#color_name=c('white','gray0','gray','antiquewhite','aquamarine4','coral2','cadeblue1','gold','mdiumpurple1')
color_hex=c('#FFFFFF','#000000','#BEBEBE','#FAEBD7','#458B74','#EE6A50',
            '#98F5FF','#FFD700','#AB82FF','#FFB5C5','#54FF9F','#4169E1')
#df_color=data.frame(color_name,color_hex)

library(ggplot2)


n=12
df=data.frame(a=seq(1,100,length.out = n),b=rep(0,n))



color_pic=ggplot()+
  geom_point(data=df,aes(x=a,y=b),
             fill=color_hex[1:n],size=7,shape=21,color=color_hex[2])+
  theme(panel.grid =element_blank())+
  theme(axis.text = element_blank())+
  theme(axis.ticks = element_blank())+
  theme(panel.border = element_blank())+
  theme(axis.title = element_blank())+
  theme(panel.background = element_rect(fill = color_hex[1],color=color_hex[2]))+
  theme(plot.margin = unit(c(130,3,130,0),'pt'))



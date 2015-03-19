png(filename = "statsPlot.png",width = 1200, height = 800)
elplot <- qplot(x= date/10000, y = porcYes ,data=dataset, color = Name, 
      geom = c("line", "point"), method = "lm", facets = ~Name, xlab = "Time", 
      ylab = "Percent of members that voted and voted 'Yes'", 
      main = "Percentege of members by Intergovernmental organization that voted 'Yes' through time") + theme(text = element_text(size=15), axis.text.x = element_text(size = 20), axis.text.y = element_text(size = 20), legend.text = element_text(size = 15))
print(elplot)
dev.off()
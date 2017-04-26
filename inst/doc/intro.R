## ------------------------------------------------------------------------
library(ggplot2)
library(ggsignif)

## ----fig.width = 6, fig.height = 4.8-------------------------------------
ggplot(iris, aes(x=Species, y=Sepal.Length)) + 
  geom_boxplot() +
  geom_signif(comparisons = list(c("versicolor", "virginica")), 
              map_signif_level=TRUE)

## ----fig.width = 6, fig.height = 4.8-------------------------------------
dat <- data.frame(Group = c("S1", "S1", "S2", "S2"),
                  Sub   = c("A", "B", "A", "B"),
                  Value = c(3,5,7,8))  

ggplot(dat, aes(Group, Value)) +
  geom_bar(aes(fill = Sub), stat="identity", position="dodge", width=.5) +
  geom_signif(stat="identity",
              data=data.frame(x=c(0.875, 1.875), xend=c(1.125, 2.125),
                              y=c(5.8, 8.5), annotation=c("**", "NS")),
              aes(x=x,xend=xend, y=y, yend=y, annotation=annotation, group=c(1,2))) +
  geom_signif(comparisons=list(c("S1", "S2")), annotations="***",
              y_position = 9.3, tip_length = 0, vjust=0.4) +
  scale_fill_manual(values = c("grey80", "grey20"))
    


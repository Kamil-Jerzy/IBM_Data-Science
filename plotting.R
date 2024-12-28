library(datasets)

#LoadData
data(mtcars)

#View first 5 rows
head(mtcars, 5)

#learn about mtcars data frame
?mtcars

#install package
install.packages("ggplot2")

#load ggplot package
library(ggplot2)

#create a scatterplot of displacement (disp) and miles per gallon (mpg)
ggplot(aes(x=disp,y=mpg,),data=mtcars)+geom_point()

#Add a title
ggplot(aes(x=disp,y=mpg,),data=mtcars)+geom_point()+ggtitle("displacement vs miles per gallon")

#change axis name
ggplot(aes(x=disp,y=mpg,),data=mtcars)+geom_point()+ggtitle("displacement vs miles per gallon") + labs(x = "Displacement", y = "Miles per Gallon")

#make vs a factor
mtcars$vs <- as.ordered(mtcars$vs)

#create boxplot of the distribution for v-shaped and straight Engine
ggplot(aes(x=vs, y=mpg), data = mtcars) + geom_boxplot()

#Add color to the boxplots to help differentiate
ggplot(aes(x=vs, y=mpg, fill = vs), data = mtcars) + 
  geom_boxplot(alpha=0.3) +
  theme(legend.position="none")

#create the histogram of weight
ggplot(aes(x=wt),data=mtcars) + geom_histogram(binwidth=0.5)
---
title: "Data Visualization in R"
teaching: 0
objectives:
- "Understand how to use Base R for plotting."
- "Learn how to make boxplots and barplots."
keypoints:
- "First key point. Brief Answer to questions. (FIXME)"
---
In R data can be visualized using the basic plotfunction. The syntax for the plot command is as below:
~~~
plot(data)
~~~
{: .language-r}

Before proceeding ahead kindly load the mtcarsdata using the below commands:
~~~
library(datasets)
data("mtcars")
mtcars$cyl <-as.factor(mtcars$cyl)
mtcars$vs <-as.factor(mtcars$vs)mtcars$am <-as.factor(mtcars$am)
mtcars$gear <-as.factor(mtcars$gear)
mtcars$carb <-as.factor(mtcars$carb)
levels(mtcars$am) <-c(levels(mtcars$am), "Automatic", "Manual")
mtcars$am[mtcars$am == 0]<-"Automatic"
mtcars$am[mtcars$am == 1] <-"Manual"
mtcars$am <-factor(mtcars$am)
str(mtcars)
~~~
{: .language-r}

{% include links.md %}


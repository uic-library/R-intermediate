---
title: "Data Visualization in R"
teaching: 0
objectives:
- "Understand how to use Base R for plotting."
- "Learn how to make boxplots and barplots."
keypoints:
- "First key point. Brief Answer to questions. (FIXME)"
---
In R data can be visualized using the basic plot function. The syntax for the plot command is as below:
~~~
plot(data)
~~~
{: .language-r}

Before proceeding ahead kindly load the mtcars data using the below commands:
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

The plot function creates the plots as below based on data type:

| Plot | Data Type |
|--------- | ---------|
| Bar plot | Factor |
| Scattor plot | Numeric |

[FIXME add image plot)mtcars$am) & plot(mtcars$disp)

## Barplot
To create a barplot in R we can use the barplot()command, but the data passed to the function must of a table type which contains the count of each factor.
[FIXME add image tab <-table]

Syntax:

You can create a better plot using the below arguments:

~~~
barplot(data,         # Data in the form of a table
        main = ,      # The heading of the plot
        xlab= ,       # The x-axis label
        ylab = ,      # The y-axis label
        col = )       # Color of the bar
~~~
{: .language-r}
[FIXME add barplot images]

To compare the counts of two different factors the above  syntax says the same, only the data passed into the barplot() function is now a table of two factors.

The legend()function can be used to include a legend in the plots but MUST be run immediately after the plot command.

Syntax:
~~~
Legend (location_of_legend, legend = legend_keys, fill = colors_of_the_keys)
~~~
{: .language-r}

[FIXME add image # Two Factors]

## HISTOGRAM
A  histogram  is  similar  to  a  barplotbut  is  used  for  numeric  data  types.  Instead  of  counting  the occurrence  of  each  individual  value,  a  histogram  divides  the  data  into  bins  (buckets/ranges) depending on the entire data range and displays the count.

Syntax:
~~~
hist(data, main = “Plot Heading”, xlab = “X-Axis Label”, ylab = “Y-Axis Label”, col = “Bar color”)
~~~
{: .language-r}

[FIXME add image hist() on horse-power distribution]

From the plot we can determine:
- Horsepower range in dataset-50 to 350
- Cars with horsepower between 50 to 100-9
- Cars with horsepower between 100 to 150-10

Thus, a histogram gives an idea about the distribution of the numeric variable in our dataset.

## PIE CHART
Pie-Chart is used for the same conditions as a bar chart but is mostly when it is required to show dominance of one or two particular value(s) in comparison with others.

Syntax:
~~~
pie(data,       # Data in form of a table
    col = ,     # Colors of the pie slices
    main = )    # Plot heading
~~~
{: .language-r}

[FIXME add image pie chart]

BOX PLOT

A Box Plot is used to understand the distribution of numerical type data in the data set. It helps to understand how data is grouped, if data is skewed and identify the outliers in the data.

[FIXME add image boxplot towardsdatascience]

A boxplot  represents data in the below categories:
Minimum     -Mean –(2 X Standard Deviation)
Q1          -25thPercentile
Median      -50thPercentile
Q3          -75thPercentile
Maximum     -Mean + (2 X Standard Deviation)
Outlier     -The 0.7% of the data which are more than 2 Standard deviations away from mean.

Kindly find a video explaining in detail percentiles here [FIXME add link] https://www.youtube.com/watch?v=IFKQLDmRK0Y.

A Box Plot can be related to a normal distribution as shown below:

[FIXME add image boxplot vs norm distribution]

Syntax:boxplot(data,boxplot(main =,boxplot(ylab = ,boxplot(col =)Numerical data (or) column fora data framePlot TitleY-Axis LabelColor of the plot

[FIXME add image boxplot horse power]

Boxplot can also be used to analyze the distribution of data across various factors in a column.
[FIXME add box plot horsepower/car type]

## SCATTER PLOT
Scatter plot can be used to identify if any relationship exists between two numeric variables.

Syntax:
~~~
plot(Numerical_column1,     # Column of numerical data type along X-axis
     Numerical_column2,     # Column of numerical data type along Y-axis
     main = ,               # Plot Title
     xlab = ,               # X-Axis Label
     ylab = ,               # Y-Axis Label
     col = )                # Plot Color
 ~~~
{: .language-r}

[FIXME add image scatter plot]

It  can  be  seen  from  the  plot  that  as  the  Horse-Power  of  the  car  increased  the  car  Mileage decreases.

{% include links.md %}


---
title: "Hypothesis Testing"
time: 
objectives:
- ""
keypoints:
- "First key point. Brief Answer to questions. (FIXME)"
---

Hypothesis  testing  is  performed to  identify  if  there  is  a  relationship  between  the  attributes (columns)  of  our  data  set.  Hypothesis testing  is  only  used  to  confirm  that  there  is  a  relation between the attributes considered but does not define the nature of the relationship.

To perform hypothesis testing, we first initially form 2 different hypotheses:
- Null Hypothesis   
  - No difference between data considered
- Alternate Hypothesis   
  – There is a difference between the data considered 
  
For example, if we want to perform a hypothesis testing to check if a car’s transmission type (Manual or Automatic) has an impact on the price of a car then our hypothesis would be:

• Null Hypothesis–There is no difference in the price range of a car based on its
Null Hypothesis–type of transmission•Alternate Hypothesis–There is a statistical difference in the price range of a car basedAlternate Hypothesis–on its type of transmissionKindly find a video explaining hypothesis testing in more detail here.CONFIDENCE INTERVALThe confidence interval determines the range of values which the true mean lies. For example, if data is collected regarding the height of men then, a `95% confidence interval` provides the range of height within which the true mean of all men’s height lie.





## CONFIDENCE INTERVAL

The confidence interval determines the range of values which the true mean lies. For example, if data is collected regarding the height of men then, a 95% confidence interval provides the range of height within which the true mean of all men’s height lie.

[Fixme add image  normal curve pg 14]

## P-Value

The p-value of a test provides the probability of gaining results in the extreme cases under the assumption that the null hypothesis is correct. If a p-value is large,then the probability of such a result is very high and if  p-value is low then the probability of such a result is very low under the considered null hypothesis.

We chose a significance value to determine when to reject the null hypothesis. Conventionally, 0.05 is chosen as the significance level such that if p-value is less the 0.05 then wereject the null hypothesis and accept the alternate hypothesis.

[FIXME make into tip blockquote]
You can refer to the below links to learn more in detail:

- Confidence Interval –MathisFun, YouTube [FIXME add in links]
- P-value –StatsDirect, YouTube, YouTube2, Towards_Data_Science

[FIXME add image "true value under null hypothesis"]


## T-TEST

The t-test is used to run a hypothesis testing on one (or) two levels of same factor.

Syntax
t.test(Factor 1,t.test(Factor 2,t.test(alternative = )Values of the first factorValues of the second factorCheck if factor 1 mean is smaller or greater than factor 2 (optional)


To determine of the transmission type of a car has an impact on its mileage:

~~~
# Storing the mileage of Automatic & Manual transmission cars in individual vectors
Auto_mileage <- mtcars[mtcars$am == "Automatic","mpg"]
Manual_mileage <- mtcars[mtcars$am == "Manual","mpg"]

# T-test to check if transmission type has an effect on the car's mileage
t.test(Auto_mileage, Manual_mileage)
~~~
{: .language-r}

~~~
	Welch Two Sample t-test

data:  Auto_mileage and Manual_mileage
t = -3.7671, df = 18.332, p-value = 0.001374
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 -11.280194  -3.209684
sample estimates:
mean of x mean of y 
 17.14737  24.39231 
~~~
{: .output}

{% include links.md %}


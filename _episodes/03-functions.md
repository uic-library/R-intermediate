---
title: "Functions"
time: 
objectives:
- "Understand the use of functions in R"
- "Understand how to use built in functions in R"
- "Understand how to create your own functions in R"
keypoints:
- "First key point. Brief Answer to questions. (FIXME)"
---
## FUNCTIONS
Function arelines of codes which are executed in a sequential order in order to perform a certain task. In other words, it is a set of statements which are executed together to accomplish a certain task.  R  like  any  programming  language,  has  many  built  in  functions  (also  called  pre-defined functions) but also allows users to create their own functions which are known as user defined functions.
### BUILT IN FUNCTIONS
These are functions which are built inside R which are readily available for all users with access to R.
E.g.:    
seq()-Print a sequence of numbers  
mean()-Find the mean value of a set of numbers  
sum()-Find the sum of a set of numbers  

~~~
seq(25,35)
~~~
{: .language-r}

results in:
~~~
[1] 25 26 27 28 29 30 31 32 33 34 35
~~~
{: .output}

You can refer Link1[FIXME link] & Link2 [FIXME link] for some of the most frequently used bult in R functions.

### USER DEFINED FUNCTION
These are  functions  which  are  manually  defined  by  user  and  are  not  available  in  R  by  default. Users can create a function based on their own requirements. These functions are useful when a block of code is required to be performed repetitively.Syntaxfunction_name<-function(argument1,argument2, .............){Body of the function (or) statementsreturn()}Calling the functionfunction_name()

{% include links.md %}


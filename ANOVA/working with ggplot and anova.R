Lecture - Playing with ggplot


This is a dataset that shows flights
''' library(nycflights13)'''

This gives you the mean and median of the departure delay
'''> flights |> summarize(avg_dep_delay = mean(dep_delay,na.rm=TRUE),
med_dep_delay = median(dep_delay,na.rm=TRUE))
'''

This graphs the dep delay data
'''flights |> ggplot(aes(x=dep_delay))+ geom_histogram(binwidth = 5)'''

this website gives you access to any type of color you can think of 
'''https://colorbrewer2.org/#type=sequential&scheme=BuGn&n=3'''

this colors you graph using the graphics color link above
'''flights |> ggplot(aes(x=dep_delay))+ geom_histogram(binwidth = 5, fill="#2ca25f", color="#99d8c9")'''



ask the question is departure delay the same acrross carrier

Anova:
  h0: all the means are equal

The decision
if p < alpha (0.05), reject h0 (null hyoothesis)
if p >= alpha, fail to reject

Run an anova
ask the question is departure delay the same acrross carrier
p= .5

times <- (50.1, 51.3, 49.0, #method 1
          48.5, 52.3, 49.9, #method 2
          50.9, 49.1, 51.2) #method 3

method <- factor(rep(c("Method1", "Method2", "Method3"), each = 3))

data <- data.frame(times, method)
#this makes a dataframe with all of your times and the different methods

anova_IS_FUN <- aov(times ~ method, data = data)
summary(anova_IS_FUN)
#runs the anova test

#null hyp - all groups means are the same
#alternative - at least one group differs

#if p < .05 reject the null
#if p >= .05 fail to reject the null

#our null is .975

#therefore we fail to reject the null.
# According to our ANOVA test, there is no evidence that 
#suggests that training methods affects times.
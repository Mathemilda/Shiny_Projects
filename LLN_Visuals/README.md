#  Visuals for Law of Large Numbers
Recall **Law of Large Numbers**: a mean of the results obtained from a sample of data should be close to its expected value and 
will tend to become closer to the expected value as bigger samples are processed. In addition a distribution of such sample means will be close to shape of
a normal distribution curve. The question is, how quickly does it converge? And what about LLN assumption that an expected value of a distribution should exists? 
What happens if it does not?

Here I present examples of sample means drawn from normal, Poisson, exponential and Cauchy distribitons. The last one does not have an expected value. You can choose a
sample size and how many samples to consider. The distributions of resulting sample means are shown as histograms.

All distributions displayed here except for Cauchy were modified to have 1 as a mean. The example with Cauchy distribution was modified to have a median =1. 

You can see that if your underlying distribution 
is already [normal](https://www.statisticshowto.com/probability-and-statistics/normal-distributions/) then its histogram starts to look like normal 
distribution (bell-shaped) very quickly. 

Histograms of sample means from a skewed distribution, like [exponential](https://www.statisticshowto.com/exponential-distribution/),  eventually starts to look like normal. 

Histograms of sample means from a skewed and discrete distribution, like [Poisson distribution](https://www.statisticshowto.com/poisson-distribution/) require 
bigger numbers to smooth out and might be still a little off even with a 5,000 trials. 
Note that at maximal values we have 5,000\*200 = 1 million numbers. 

The [Cauchy distribution](https://www.statisticshowto.com/cauchy-distribution-2/) does not have an expected value. 
You can look it up and see what happens when we compute sample means in practice: 
although majority of values are close to 1, but sample means are very spread out, their range keeps changing and average of sample means does not converge to one number. 

Here is a link to a site where the code is deployed and its result can be watched:

[Shiny site for app deployment](https://mathemilda.shinyapps.io/large-number-theorem-visuals/)

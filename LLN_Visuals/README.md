#  Visuals for Law of Large Numbers
Recall **Law of Large Numbers**: an average of the results obtained from a sample of data should be close to its expected value (usually called a __mean__) and 
will tend to become closer to the expected value as bigger samples are processed. In addition a distribution of the averages will be close to shape of
a normal distribution curve. The question is, how quickly does it converge? And what about LLN assumption that an expected value of a distribution should exists? 
What happens if it does not?

Here I present examples of such samples drown from normal, Poisson, exponential and Cauchy distribitons. The last one does not have an expected value. You can choose a
sample size and how many samples to consider. The distributions of resulting averages are shown as histograms.

All distributions shown here except for Cauchy were modified to have 1 as a mean. The example with Cauchy distribution was modified to have a median =1. 

You can see that if your underlying distribution 
is already [normal](https://www.statisticshowto.com/probability-and-statistics/normal-distributions/) then its histogram starts to look like normal distribution (bell-shaped) very quickly. 

A skewed distribution, like [exponential](https://www.statisticshowto.com/exponential-distribution/),  eventually starts to look like normal. 

A skewed and discrete distribution, like [Poisson distribution](https://www.statisticshowto.com/poisson-distribution/) require bigger numbers to smooth out and
is still a bit off even with a 5,000 trials. 
Note that at maximal values we have 5,000\*200 = 1 million numbers. 

The [Cauchy distribution](https://www.statisticshowto.com/cauchy-distribution-2/) does not have a theoretically computable mean. 
You can look it up and see what happens when we compute sample averages in practice: 
although its median of averages does not change much, but averages are very spread out and theire range keeps changing. 


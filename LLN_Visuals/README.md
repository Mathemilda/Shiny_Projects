# Law of Large Numbers Visuals
Recall **Law of Large Numbers**: an average of the results obtained from a large number of trials should be close to the expected value and 
will tend to become closer to the expected value as more trials are performed. In addition distribution of the average will converge to 
a normal distribution curve. The question is, how quickly it happens? And what about LLN assumption that a mean of a distribution should exists? What happens if it does not?

All distributions except for Cauchy here were modified to have 1 as a mean. The example with Cauchy distribution was modified to have a median =1. 

Here you can perform trials with different number of samples and working with different number of samples from 4 distributions. You can see that if your underlying distribution 
is already normal then its histogram starts to look like normal very quickly. 

A random variable with [Poisson distribution](https://www.statisticshowto.com/poisson-distribution/) eventually starts to look like normal, too. 

A more skewed distribution, like [exponential](https://www.statisticshowto.com/exponential-distribution/), is still a bit off even with a 5,000 trials. Note that at maximal values we have 5,000\*200 = 1 million numbers. 

The Cauchy distribution does not have a theoretically computable mean. You can look it up and see what happens when we compute sample averages in practice: although its mode is close to 1, but this closeness is relative to its range. And the range keeps not only growing, but changing a lot: at some point we got a lot of negative numbers, and then it can change to mostly positive numbers.

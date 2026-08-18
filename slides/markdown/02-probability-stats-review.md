# ECON 3300

## Probability and Statistics Review

Jessica Perrigan

University of Nebraska at Omaha

Notes:
This review introduces the probability and statistics concepts we will use throughout econometrics.

---

## Why we care

<ul>
  <li class="fragment">Data have an inherent element of randomness because of how they are generated or collected.</li>
  <li class="fragment">To model data, we need to account for that randomness.</li>
  <li class="fragment">Probability theory gives us a mathematical framework to:</li>
  <ul>
    <li class="fragment">handle, study, and quantify uncertainty;</li>
    <li class="fragment">work with random variables and probability distributions.</li>
  </ul>
</ul>

---

<!-- .slide: class="section-title" data-background-color="#f2f2f2" -->

## Descriptive Statistics

---

## Descriptive statistics

<div class="fragment">
Summarizing a sample with a few compact metrics helps us understand the overall shape of a dataset.
</div>

<br>

<div class="fragment">
Two important types of descriptive statistics are:
</div>

<ul>
  <li class="fragment">measures of central tendency;</li>
  <li class="fragment">measures of spread.</li>
</ul>

---

## Measures of central tendency

<ul>
<li class="fragment">The mode, median, and mean describe the center of a distribution.</li>
<li class="fragment">
The sample mean of a variable $x$ is the sum of its observations divided by the number of observations:</li>
</ul>

<div class="fragment">
$$
\bar{x} = \frac{1}{n}\sum_{i=1}^{n}x_i
$$
</div>

---

## Measures of spread

<div class="fragment medium-text">
<ul>
 <li class="fragment">The variance describes how the data are spread around the mean. It is the mean squared difference from the mean:</li>
 </ul>
</div>

<div class="fragment">
$$
\operatorname{Var}(x)=\frac{1}{n}\sum_{i=1}^{n}(x_i-\bar{x})^2
$$
</div>

<div class="fragment medium-text">
<ul>
 <li class="fragment">Squaring prevents positive and negative deviations from canceling and gives greater weight to larger deviations.</li>

 <li class="fragment">The standard deviation is the square root of the variance and is expressed in the same units as the observations.</li>
</div>

---

## Covariance

<div class="fragment medium-text">
Covariance indicates whether large values of one variable tend to be associated with large values of another, and whether small values tend to occur together.
</div>

<div class="fragment">
$$
\operatorname{Cov}(x,y)
=\frac{1}{n}\sum_{i=1}^{n}(x_i-\bar{x})(y_i-\bar{y})
$$
</div>

<div class="fragment medium-text">
A positive covariance indicates that $x$ and $y$ tend to move together; a negative covariance indicates that they tend to move in opposite directions.
</div>

---

## Correlation

<div class="fragment">
Correlation is a normalized version of covariance:
</div>

<div class="fragment">
$$
\operatorname{Corr}(x,y)
=\frac{\operatorname{Cov}(x,y)}{\sigma_x\sigma_y}
$$
</div>

<div class="fragment">
Because correlation is unit-free and bounded between $-1$ and $1$, it is easier to interpret across different scales.
</div>

---

## Correlation measures linear association

<div class="slide-image">
<img src="images/correlation-examples.jpg" 
  width: 80%;
  aspect-ratio: 14 / 9;
alt="Four scatterplots showing strong positive linear correlation, strong negative linear correlation, no correlation, and a nonlinear relationship with weak linear correlation">
</div>

Notes:
Correlation can be close to zero even when two variables have a strong nonlinear relationship.

---

<!-- .slide: class="section-title" data-background-color="#f2f2f2" -->

## Probability and Random Variables

---

## Random variables

<ul>
  <li class="fragment">A random variable takes a numerical value corresponding to the outcome of a random experiment.</li>
  <li class="fragment">More formally, it is a function that maps outcomes to real numbers.</li>
  <li class="fragment">For a coin flip, we might map heads to $0$ and tails to $1$.</li>
  <li class="fragment">For ten coin flips, a random variable might count the number of tails.</li>
</ul>

---

## Random experiments and outcomes

<div class="fragment">
A random experiment is a process with an uncertain result; an outcome is the result obtained.
</div>

<ul>
  <li class="fragment">Coin flip: heads or tails</li>
  <li class="fragment">Draw from a deck: one of 52 cards</li>
  <li class="fragment">Roll a six-sided die: $1,2,3,4,5,$ or $6$</li>
</ul>

---

## Sample space and events

<div class="fragment medium-text">
The <strong>sample space</strong>, often denoted $S$, is the set of all possible outcomes.
</div>

<div class="fragment medium-text">
For two coin flips:
$$
S=\{HH,HT,TH,TT\}
$$
</div>

<div class="fragment medium-text">
An <strong>event</strong> is a subset of the sample space—for example, “the die roll is 3” or “the die roll is in $\{1,3,6\}$.”
</div>

---

## Discrete and continuous random variables

<div class="fragment">
<ul>
<li class="fragment"><strong>Discrete random variables</strong> take values from a countable list of possibilities.</li>
<ul>
<li class="fragment">Example: the result of rolling a die.</li>
</ul>
</ul>
</div>

<br>

<div class="fragment">
<ul>
<li class="fragment"><strong>Continuous random variables</strong> can take any value in an interval.</li>
<ul>
<li class="fragment">Example: the height of a randomly selected person.</li>
</ul>
</ul>
</div>

---

## Probability

<div class="fragment medium-text">
The probability of an event describes how likely it is to occur. Probabilities must satisfy:
</div>

<ol>
  <li class="fragment">$P(A)\geq 0$ for every event $A$;</li>
  <li class="fragment">$P(A)\leq 1$;</li>
  <li class="fragment">$P(S)=1$;</li>
  <li class="fragment">if $A$ and $B$ are mutually exclusive, $P(A\cup B)=P(A)+P(B)$.</li>
</ol>

---

## Probability notation

<ul>
  <li class="fragment">We denote random variables with uppercase letters, such as $X$.</li>
  <li class="fragment">The distribution associated with $X$ is denoted $P(X)$.</li>
  <li class="fragment">The probability that $X$ takes the value $x$ is:</li>
</ul>

<div class="fragment">
$$
P(X=x)
$$
</div>

---

## From outcomes to values

<div class="columns">

<div class="fragment">

### Coin flip

<div><strong>Experiment</strong><br>coin flip</div>

<br>

<div><strong>Outcomes</strong><br>heads, tails</div>

<br>

<div><strong>Random variable</strong><br>$X(H)=0$, $X(T)=1$</div>

</div>

<div class="fragment">

### Generic process

<div><strong>Experiment</strong><br>generic process</div>

<br>

<div><strong>Outcomes</strong><br>$\omega_1,\omega_2$</div>

<br>

<div><strong>Random variable</strong><br>$X(\omega_1)=x_1$, $X(\omega_2)=x_2$</div>

</div>

</div>

---

<!-- .slide: class="section-title" data-background-color="#f2f2f2" -->

## Probability Distributions

---

## Probability distributions

<ul>
  <li class="fragment">Random variables describe stochastic processes whose outcomes vary.</li>
  <li class="fragment">A probability distribution assigns probabilities to the possible values of a random variable.</li>
  <li class="fragment">It provides a model of how the random variable varies.</li>
</ul>

---

## A discrete probability distribution

<div class="fragment">
For a fair six-sided die:
</div>

<table class="probability-table fragment">
  <thead><tr><th>Outcome</th><th>1</th><th>2</th><th>3</th><th>4</th><th>5</th><th>6</th></tr></thead>
  <tbody><tr><th>Probability</th><td>$1/6$</td><td>$1/6$</td><td>$1/6$</td><td>$1/6$</td><td>$1/6$</td><td>$1/6$</td></tr></tbody>
</table>

<br>

<div class="fragment">
The table lists every possible value of $X$ and its probability.
</div>

---

## Why use a function?

<ul>
  <li class="fragment">For a die, listing the entire distribution is easy because there are only six outcomes.</li>
  <li class="fragment">For many random variables, the number of possible values is very large.</li>
  <li class="fragment">For a continuous random variable, there are infinitely many possible values.</li>
  <li class="fragment">A function provides a compact way to define the distribution.</li>
</ul>

---

## Discrete probability distributions

<div class="fragment medium-text">
A <strong>probability mass function</strong> (PMF) represents a discrete probability distribution:
</div>

<div class="fragment">
$$
f(x)=P(X=x)
$$
</div>

<div class="fragment medium-text">
For a fair six-sided die:
</div>

<div class="fragment">
$$
f(3)=P(X=3)=\frac{1}{6}
$$
</div>

---

## Continuous probability distributions

<ul>
  <li class="fragment">A continuous random variable has infinitely many possible values.</li>
  <li class="fragment">The probability of drawing any one exact value is zero.</li>
  <li class="fragment">We therefore consider the probability of drawing a value within an interval.</li>
</ul>

---

## Probability density functions

<div class="two-column-slide">

<div class="column-text">

<div class="fragment medium-text">
A <strong>probability density function</strong> (PDF) represents a continuous probability distribution.
</div>

<div class="fragment medium-text">
Probability is the area under the density curve between two values:
</div>

<div class="fragment small text">

$$
P(a<X<b)=\int_a^b f(x)\,dx
$$

</div>

</div>

<div class="column-image">
<img 
src="images/pdf-area.png" 
width: 120%;
alt="Probability density curve with the area between a and b shaded">
</div>

</div>

---

## Properties of probability functions

<div class="fragment medium-text">
The total probability must equal one:
</div>

<div class="fragment">
$$
\sum_{x\in S}P(x)=1
\qquad\text{or}\qquad
\int_{-\infty}^{\infty}f(x)\,dx=1
$$
</div>

<ul>
  <li class="fragment">For a PMF, each probability lies between $0$ and $1$.</li>
  <li class="fragment">For a continuous variable, $P(X=x)=0$ for any single value $x$.</li>
</ul>

---

## Cumulative distribution functions

<div class="two-column-slide">

<div class="column-text">

<div class="fragment medium-text">
The cumulative distribution function (CDF) gives the probability that a random variable is less than or equal to $x$:
</div>

<div class="fragment">
$$
F_X(x)=P(X\leq x)
$$
</div>

<div class="fragment medium-text">
$F_X(x)$ cannot decrease as $x$ increases.
</div>

</div>

<div class="column-image">
<img src="images/pdf-cdf.png" alt="A probability density function and its corresponding cumulative distribution function">
</div>

</div>

---

<!-- .slide: class="section-title" data-background-color="#f2f2f2" -->

## Joint, Marginal, and Conditional Probability

---

## Joint probabilities

<div class="fragment">
The joint probability that $X=x$ and $Y=y$ is:
</div>

<div class="fragment">
$$
P(X=x,Y=y)
$$
</div>

<div class="fragment medium-text">
If $X$ and $Y$ are independent:
</div>

<div class="fragment">
$$
P(X=x,Y=y)=P(X=x)P(Y=y)
$$
</div>

---

## Marginal probabilities

<div class="fragment medium-text">
To obtain the probability of one event without conditioning on the other variable, sum the joint probabilities over all possible values of the other variable:
</div>

<div class="fragment">
$$
P(X=x)=\sum_y P(X=x,Y=y)
$$
</div>

---

## Marginal probability: example

<div class="fragment">
Suppose we toss a coin and roll a die. What is the probability of rolling a 6?
</div>

<table class="probability-table fragment">
  <thead><tr><th></th><th>1</th><th>2</th><th>3</th><th>4</th><th>5</th><th>6</th><th>Total</th></tr></thead>
  <tbody>
    <tr><th>Heads</th><td>$1/12$</td><td>$1/12$</td><td>$1/12$</td><td>$1/12$</td><td>$1/12$</td><td>$1/12$</td><td>$1/2$</td></tr>
    <tr><th>Tails</th><td>$1/12$</td><td>$1/12$</td><td>$1/12$</td><td>$1/12$</td><td>$1/12$</td><td>$1/12$</td><td>$1/2$</td></tr>
  </tbody>
</table>

<div class="fragment">
$$
P(\text{roll }6)=\frac{1}{12}+\frac{1}{12}=\frac{1}{6}
$$
</div>

---

## The product rule of probability

<div class="fragment">
For discrete random variables:
</div>

<div class="fragment">
$$
P(Y=y,X=x)=P(Y=y\mid X=x)P(X=x)
$$
</div>

<div class="fragment">
Equivalently:
</div>

<div class="fragment">
$$
P(Y=y\mid X=x)=\frac{P(Y=y,X=x)}{P(X=x)}
$$
</div>

Notes:
In a group of 100 sports-car buyers, 40 bought alarm systems, 30 bought bucket seats, and 20 bought both. Among buyers who bought an alarm, the probability of also buying bucket seats is 20/40 = 1/2.

---

## Conditional probability

<div class="fragment">
Conditional probability is the probability of one event given that another event has occurred:
</div>

<div class="fragment">
$$
P(Y=y\mid X=x)
=\frac{P(X=x,Y=y)}{P(X=x)}
$$
</div>

<div class="fragment medium-text">
This differs from $P(Y=y,X=x)$, the probability that both events occur.
</div>

---

## Conditional distributions and means

<div class="fragment">
<ul>
<li class="fragment">The conditional mean plays a central role in prediction.</li>

<li class="fragment">Suppose we want to predict $Y$ and observe the value of a related random variable $X$.</li>

<li class="fragment">Example: predicting income given years of education.</li>
</div>

<div class="fragment">
$$
E(Y\mid X=x)
$$
</div>

---

<!-- .slide: class="section-title" data-background-color="#f2f2f2" -->

## Sampling Distributions

---

## Random sampling

<ul>
  <li class="fragment">Random sampling means drawing a sample randomly from a larger population.</li>
  <li class="fragment">Because the observations are random, the sample average is also a random variable.</li>
  <li class="fragment">Its probability distribution is called its <strong>sampling distribution</strong>.</li>
</ul>

---

## The sample mean is a random variable

<div class="fragment medium-text">
The observations $(Y_1,\dots,Y_n)$ are drawn at random, so their values are random.
</div>

<div class="fragment">
$$
\bar{Y}=\frac{1}{n}\sum_{i=1}^{n}Y_i
$$
</div>

<div class="fragment medium-text">
Functions of the observations, including $\bar{Y}$, are therefore random: a different sample would generally produce a different value.
</div>

---

## The sampling distribution

<div class="fragment medium-text">
The distribution of $\bar{Y}$ over all possible samples of size $n$ is the sampling distribution of $\bar{Y}$.
</div>

<div class="fragment">
$$
E(\bar{Y})
\qquad\text{and}\qquad
\operatorname{Var}(\bar{Y})
$$
</div>

<div class="fragment medium-text">
Sampling distributions underpin statistical inference and econometrics.
</div>

---

## Expectation of random variables

<div class="fragment medium-text">
The expected value is the long-run average value of a random variable. For a discrete variable:
</div>

<div class="fragment">
$$
E(X)=\sum_x xP(X=x)
$$
</div>

<div class="fragment medium-text">
If $X\in\{1,5,10,100\}$ and each value has probability $1/4$:
</div>

<div class="fragment">
$$
E(X)=\tfrac14(1)+\tfrac14(5)+\tfrac14(10)+\tfrac14(100)=29
$$
</div>

---

## Expectation of continuous variables

<div class="fragment">
For a continuous random variable, integrate rather than sum the probability-weighted outcomes:
</div>

<div class="fragment">
$$
E(X)=\int_{-\infty}^{\infty}x f(x)\,dx
$$
</div>

---

## Variance of random variables

<div class="fragment medium-text">
<ul>
<li class="fragment">The variance describes the spread of a random variable’s possible outcomes.</li>

<li class="fragment">It is the expected squared difference from the expected value:</li>
</div>

<div class="fragment">
$$
\operatorname{Var}(X)
=E\left[(X-E(X))^2\right]
$$
</div>

---

## Large-sample behavior of $\bar{Y}$

<ul>
  <li class="fragment">For small $n$, the sampling distribution of $\bar{Y}$ may be complicated.</li>
  <li class="fragment">As $n$ increases, $\bar{Y}$ becomes more tightly centered around $\mu_Y$—the Law of Large Numbers.</li>
  <li class="fragment">The distribution of $\bar{Y}-\mu_Y$ becomes approximately normal—the Central Limit Theorem.</li>
</ul>

---

## Central limit theorem

<div class="fragment medium-text">
For a sufficiently large random sample of independent observations, the distribution of their average is approximately Gaussian:
</div>

<div class="fragment">
$$
\bar{Y}\ \dot\sim\ N\left(\mu_Y,\frac{\sigma_Y^2}{n}\right)
$$
</div>

<div class="fragment medium-text">
A normal distribution with mean $\mu$ and variance $\sigma^2$ has density:
</div>

<div class="fragment medium-text">
$$
f(x;\mu,\sigma^2)=\frac{1}{\sqrt{2\pi\sigma^2}}
\exp\left[-\frac{(x-\mu)^2}{2\sigma^2}\right]
$$
</div>

---

## Parameters of a normal distribution

<div class="two-column-slide">

<div class="column-image">
<img src="images/normal-means.png" alt="Normal distributions with different means and a common variance">
</div>

<div class="column-image">
<img src="images/normal-variances.png" alt="Normal distributions with a common mean and different variances">
</div>

</div>

Notes:
Changing the mean shifts the distribution. Changing the variance changes its spread and height while preserving total area equal to one.

---

<!-- .slide: class="section-title" data-background-color="#f2f2f2" -->

## Estimation

---

## Estimating the population mean

<div class="fragment">
<ul>
<li class="fragment">We want an estimator that gets as close as possible to the unknown true value, at least on average.</li>

<li class="fragment">What makes one estimator better than another?</li>

<ul>
  <li class="fragment">Its sampling distribution is centered on the true value.</li>
  <li class="fragment">Its sampling distribution is tightly concentrated around the true value.</li>
</ul>
</ul>
</div>

---

## Why use the sample mean?

<div class="fragment">
<ul>
<li class="fragment">$\bar{Y}$ is the natural estimator of the population mean $\mu_Y$.</li>

<li class="fragment">But we still need to ask:</li>

<ul>
  <li class="fragment">What are the properties of $\bar{Y}$?</li>
  <li class="fragment">Why use $\bar{Y}$ rather than another estimator?</li>
  <li class="fragment">What does the sampling distribution of $\bar{Y}$ look like?</li>
</ul>
</ul>
</div>

---

## What we want to know

<ul>
  <li class="fragment">What is $E(\bar{Y})$?</li>
  <li class="fragment">Is $\bar{Y}$ an unbiased estimator of $\mu_Y$?</li>
  <li class="fragment">What is $\operatorname{Var}(\bar{Y})$?</li>
  <li class="fragment">How does $\operatorname{Var}(\bar{Y})$ depend on $n$?</li>
  <li class="fragment">Does $\bar{Y}$ become close to $\mu_Y$ as $n$ becomes large?</li>
</ul>

---

## Why use $\bar{Y}$ to estimate $\mu_Y$?

<ul>
  <li class="fragment"><strong>Unbiased:</strong> $E(\bar{Y})=\mu_Y$.</li>
  <li class="fragment"><strong>Consistent:</strong> $\bar{Y}\xrightarrow{p}\mu_Y$.</li>
  <li class="fragment">It has the smallest variance among linear unbiased estimators.</li>
  <li class="fragment">It is the least-squares estimator:</li>
</ul>

<div class="fragment">
$$
\bar{Y}=\arg\min_m\sum_{i=1}^{n}(Y_i-m)^2
$$
</div>

---

## Sample variance and standard deviation

<div class="fragment">
The sample variance is:
</div>

<div class="fragment">
$$
s_Y^2=\frac{1}{n-1}\sum_{i=1}^{n}(Y_i-\bar{Y})^2
$$
</div>

<div class="fragment">
It is a consistent estimator of the population variance:
</div>

<div class="fragment">
$$
s_Y^2\xrightarrow{p}\sigma_Y^2
$$
</div>

<div class="fragment">
The sample standard deviation is $s_Y=\sqrt{s_Y^2}$.
</div>

---

## Standard error

<div class="fragment">
The standard error estimates the standard deviation of the sampling distribution:
</div>

<div class="fragment">
$$
SE(\bar{Y})=\frac{s_Y}{\sqrt{n}}
$$
</div>

<div class="fragment">
We use the standard error to quantify sampling uncertainty and compute test statistics and $p$-values.
</div>

---

<!-- .slide: class="section-title" data-background-color="#f2f2f2" -->

## Hypothesis Testing and Confidence Intervals

---

## The $t$-statistic

<div class="fragment medium-text">
The standardized sample mean is called the $t$-statistic:
</div>

<div class="fragment">
$$
t^{act}=\frac{\bar{Y}-\mu_{Y,0}}{SE(\bar{Y})}
$$
</div>

<div class="fragment medium-text">
For large $n$, $s_Y$ is close to $\sigma_Y$, so under the null hypothesis:
</div>

<div class="fragment">
$$
t^{act}\ \dot\sim\ N(0,1)
$$
</div>

---

## Hypothesis testing

<div class="fragment medium-text">
The $p$-value is the probability, assuming the null is true, of observing a statistic at least as adverse to the null as the statistic computed from the sample.
</div>

<div class="fragment">
$$
p\text{-value}
=P_{H_0}\left(
|\bar{Y}-\mu_{Y,0}|\geq
|\bar{Y}^{act}-\mu_{Y,0}|
\right)
$$
</div>

<div class="fragment medium-text">
For a large-sample two-sided test:
</div>

<div class="fragment">
$$
p\text{-value}=2\Phi(-|t^{act}|)
$$
</div>

---

## Significance levels and $p$-values

<div class="two-column-slide">

<div class="column-text">

<div class="fragment medium-text">
<ul>
  <li class="fragment">The significance level is chosen before examining the test result.</li>
  <li class="fragment">The $p$-value is sometimes called the marginal significance level.</li>
  <li class="fragment">Reporting the $p$-value conveys more information than only reporting “reject” or “do not reject.”</li>
</ul>

</div>
</div>

<div class="column-image">
<img src="images/p-value-regions.png" alt="Standard normal curve with two shaded tail regions representing a two-sided p-value">
</div>

</div>

---

## Hypotheses about a population mean

<div class="fragment medium-text">
Two one-sided alternatives and one two-sided alternative are common:
</div>

<div class="fragment medium-text">
$$
\begin{aligned}
H_0 &: E(Y)=\mu_{Y,0}
&\text{vs.}\quad H_1 &: E(Y)>\mu_{Y,0} \\
H_0 &: E(Y)=\mu_{Y,0}
&\text{vs.}\quad H_1 &: E(Y)<\mu_{Y,0} \\
H_0 &: E(Y)=\mu_{Y,0}
&\text{vs.}\quad H_1 &: E(Y)\neq\mu_{Y,0}
\end{aligned}
$$
</div>

---

## Steps in hypothesis testing

<div class="fragment">
$$
H_0:E(Y)=\mu_{Y,0}
\qquad
H_A:E(Y)\neq\mu_{Y,0}
$$
</div>

<ol>
  <li class="fragment">Compute $SE(\bar{Y})$.</li>
  <li class="fragment">Compute the $t$-statistic.</li>
  <li class="fragment">Compute the $p$-value.</li>
  <li class="fragment">At the 5% level, reject $H_0$ if the $p$-value is less than $0.05$.</li>
</ol>

---

## Example

<div class="fragment medium-text">
Suppose $n=200$ and we test $H_0:E(Y)=\$20$ per hour for recent college graduates. The sample gives:
</div>

<div class="fragment small-text">
$$
\bar{Y}=\$22.64,
\qquad
s_Y=\$18.14
$$
</div>

<div class="fragment small-text">
$$
SE(\bar{Y})=\frac{18.14}{\sqrt{200}}=1.28
$$
</div>

<div class="fragment small-text">
$$
t^{act}=\frac{22.64-20}{1.28}=2.06
$$
</div>

<div class="fragment small-text">
$$
p\text{-value}=2\Phi(-2.06)=0.039
$$
</div>

Notes:
Assuming the null is true, the probability of observing a sample average at least as far from \$20 as \$22.64 is 3.9%. Reject the null at the 5% level.

---

## Confidence intervals

<div class="fragment medium-text">
A 95% confidence interval is produced by a procedure that contains the true value of $\mu_Y$ in 95% of repeated samples.
</div>

<div class="fragment medium-text">
$$
\bar{Y}\pm1.96\,SE(\bar{Y})
$$
</div>

<div class="fragment medium-text">
More generally:
</div>

<div class="fragment medium-text">
$$
\begin{aligned}
90\% &: \quad \bar{Y}\pm1.64\,SE(\bar{Y})\\
95\% &: \quad \bar{Y}\pm1.96\,SE(\bar{Y})\\
99\% &: \quad \bar{Y}\pm2.58\,SE(\bar{Y})
\end{aligned}
$$
</div>

Notes:
A 95% confidence interval can also be understood as the set of values of $\mu_Y$ that would not be rejected by a two-sided test at the 5% significance level.

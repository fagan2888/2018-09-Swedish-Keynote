# Some key results of the model

1. If a HH has low mortgage debt, they do not default, regardless of the income shocks or house prices.
2. HHs default only in a high debt and low house price environment.
  * The threshold of $m_t$ below which a household defaults is determined by the permanent income shock they receive and their employment state.
  * If a household is unemployed (or has a low draw of permanent income), this threshold is ***lower***.
    * This is because if the HHs whose prospects of future income are low end up defaulting, they will have to bear a higher burden of the more expensive rental services. (*I need to understand and explain this better.*)
3. Based on the current calibration (***annual frequency***), I am having trouble matching the data for default rate.
  * When prices are low and debt is high, default happens when $m_t<0.4$.
    * **NOTE $(07/30/2018):$ This threshold is a little higher now, since I had been incorrectly using a half-life of 60 years for the mortgage debt in my initial estimation. This was a remnant from the quarterly calibration, which I had not adjusted for the annual frequency.**
  * After discretization of the permanent income process, using the Rouwenhorst method with $\sigma_p=0.1$, the grid space I get is given by $[0.8, 0.9, 1.0, 1.1, 1.2]$.
  * Transitory income shocks drawn from a mean-one log-normal distribution with $\sigma_{\theta} = 0.1$ take up values between $0.76$ and $1.30$.
  * This means that the lowest possible income draw that a household can receive in the simulation is $y_t=0.8 \times 0.76 \approx 0.6$.
  * Since all the households face a borrowing constraint, $a_t \geq 0$, this simulation would not produce any defaulting households.
  * Thus, we have to use the following three model components to produce defaults:
    1. Unemployment
      * Since it is an infinite horizon model, HHs have large buffer stocks. Therefore, the unemployment shock has to be persistent and the income during the unemployed state has to be low enough for the households to draw down their liquid assets.
      * Guerrieri and Lorenzoni (2017) set unemployment benefits to $40\%$ of the average labor income. Although they do not make a distinction between permanent and transitory shocks, we will set the unemployment benefits as $40\%$ of the average permanent income. Then the lowest income draw that an unemployed household can get is $0.4 \times 0.8 = 0.32$. This, however, is not enough for HH to draw down their resources to the point of default.
      * Even if the unemployment benefits are reduced further, we still require unemployment to be very persistent for the HHs to draw down their liquid resources. This, however, requires the probability of transitioning from unemployment to employment, $\pi_{u,e}$, to be much lower than Shimer (2005)'s estimate of $0.882$.
    2. House maintenance costs/depreciation
      * These make it costly for HHs to continue staying in a house and would push up the $m_t$ threshold for default higher.
      * KMV (2017) set the housing maintenance/depreciation rate at $1.5\%$.
      * Following Carroll and Dunn (1997), the house price is set to $3$ times the average after-tax income, so these costs would amount to $0.045$ per period.
      * **[The threshold should increase my more than 0.015*3, since these payments have to be made every period into the future.]**
    3. Utility from owner-occupied house
      * **NOTE $(07/30/2018):$ I had initially set the utility flow from owner-occupied housing too low. As a result of this, HHs were accumulating high values of liquid assets before they would buy a house. Since HHs also have access to mortgages, even after buying a house, their liquid assets stayed relatively high. Increasing the utility flow from owner-occupied housing leads HHs to buy a house at lower values of $m_t$. Thus, if someone is hit with an unemployment shock soon after buying a house with high mortgage, the threshold to default will be crossed a lot faster.**
      * **I am working on the results from this updated calibration right now.**

#
* Could changing the frequency to quarterly help?
* Could allowing HELOCs help? In that case the "natural borrowing constraint" would depend on the lowest possible income draw in the next period.

##### Note on simulation speed
* Currently, the simulation part's runtime is a little longer than I had expected.
* Simulating 100 households for a period of 150 years is taking around 2.5 hours.
* It is mostly because for the simulation part I am looping over each household (i) for every time period (t), and for each (i,t) pair I am accessing the relevant converged interpolation structures.
* I am guessing that the number of households and time periods that I am simulating is very low, so I will have to think of a way to speed up the code on the simulation front.
* **NOTE $(07/30/2018):$ Possible solution:**
  * **Although we will have to loop over every time period $t$, we can speed up the code by eliminating the loop over every household $i$.**
  * **Create a variable $l_t=(s_t,yp_t,pp_t,pt_t)$ that identifies each household's housing tenure $(s)$, the grid-location of each households' persistent income draw, the grid-location of the persistent component of house prices, and the grid-location of the transitory component of house prices for time period $t$.**
  * **For all households in a given $l_t$, we collect their liquid assets and mortgage balance in a matrix $MB^l_t = (m_t,b_t)$.**
  * **Then the relevant interpolator $l_t$ needs to be called just once using input $MB^l_t$.**

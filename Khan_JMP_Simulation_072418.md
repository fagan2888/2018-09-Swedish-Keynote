# Some key results of the model

1. If a HH has low mortgage debt, they do not default, regardless of the income shocks or house prices.
2. HHs default only in a high debt and low house price environment.
  * The threshold of $m_t$ below which a household defaults is determined by the permanent income shock they receive and their employment state.
  * If a household is unemployed (or has a low draw of permanent income), this threshold is ***lower***.
    * This is because if the HHs whose prospects of future income are low end up defaulting, they will have to bear a higher burden of the more expensive rental services. (*I need to understand and explain this better.*)
3. Based on the current calibration (***annual frequency***), I am having trouble matching the data for default rate.
  * When prices are low and debt is high, default happens when $m_t<0.4$.
  * After discretization of the permanent income process, using the Rouwenhorst method with $\sigma_p=0.1$, the grid space we get is given by $[0.8, 0.9, 1.0, 1.1, 1.2]$.
  * Transitory income shocks drawn from a mean-one log-normal distribution with $\sigma_{\theta} = 0.1$ take up values between $0.76$ and $1.30$.
  * This means that the lowest possible income draw that a household can receive in the simulation is $y_t=0.8 \times 0.76 \approx 0.6$.
  * Since all the households face a borrowing constraint, $a_t \geq 0$, this simulation would not produce any defaulting households.
  * Thus, we have to depend on the following two modeling features to produce defaults:
    1. Unemployment
      * Since it is an infinite horizon model, HHs have large buffer stocks. Therefore, the unemployment shock has to be persistent and the income during the unemployed state has to be low enough for the households to draw down their liquid assets.
      * Guerrieri and Lorenzoni (2017) set unemployment benefits to $40\%$ of the average labor income. Since they do not make a distinction between permanent and transitory shocks, we will set the unemployment benefits as $40\%$ of the average permanent income. Then the lowest income draw that an unemployed household can get is $0.4 \times 0.8 = 0.32$. This, however, is not enough for HH to draw down their resources to the point of default.
      * Even if the unemployment benefits are reduced, we still require unemployment to be very persistent for the HHs to draw down their liquid resources. This, however, requires the probability of transitioning from unemployment to employment, $\pi_{u,e}$, to be much lower than Shimer (2005)'s estimate of $0.882$.
    2. House maintenance costs/depreciation
      * These make it costly for HHs to continue staying in a house and would push the $m_t$ threshold for default higher.
      * KMV (2017) set the housing maintenance/depreciation rate at $1.5\%$.
      * Following Carroll and Dunn (1997), the house price is set to $3$ times the average after-tax income, so these costs would amount to $0.045$ per period.
      * **[The threshold should increase my more than 0.015*3, since these payments have to be made every period into the future.]**
#
* Could changing the frequency to quarterly help?
* Could allowing HELOCs help? In that case the "natural borrowing constraint" would depend on the lowest possible income draw in the next period.

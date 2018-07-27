# Notes -- Guerrieri and Lorenzoni (2017)
## Credit Crises, Precautionary Savings and the Liquidity Trap
#

* Effect of credit crunch on consumer spending in a heterogeneous-agent incomplete-market model.
* How are spending decisions of borrowers and lenders affected by an economy-wide financial adjustment?
* What happens to aggregate activity?
* How long does the adjustment last?
* After an unexpected permanent tightening in consumers' borrowing capacity,
  * constrained consumers are **forced** to repay their debt,
  * unconstrained consumers increase their precautionary savings.
  * This depresses interest rates (particularly in the short-run) and generates output drop, even with flexible prices.
  * Output drop larger with sticky prices, if ZLB prevents interest rates from adjusting downwards.
  * With durable goods in the model, HHs take larger debt positions and the output response can be larger.


####Relevant papers


####Key model features
* Baseline model:
  * Bewley (1977) type model
  * Infinite horizon
  * Uninsurable income risk
  * Only asset traded is a 1-period risk-free bond
  * HHs can borrow up to an exogenous limit $b_{i,t+1}\leq \phi$.
  * $U(c_{i,t},n_{i,t})$
    * No durables
  * Each HH produces consumption goods using linear technology $y_{i,t} = \theta_{i,t} \eta_{i,t}$, where $\theta_{i,t}$ is an idiosyncratic shock to the labor productivity.
    * $\theta$ is discretized to a Markov chain with **$\theta^1 = 0$**, which is interpreted as **unemployment**.
    * **No capital.**
  * **No default or bankruptcy**
  * **Forced deleveraging as a result of tightening of credit conditions.**
* Extended model with durables:
  * Similar to **Carroll and Dunn**

#
* 2 channels in the consumers' response to a reduction in their borrowing capacity:
  * Direct channel: constrained borrowers are forced to reduce their debt.
  * Precautionary channel: unconstrained agents reduce their debt or increase their savings as a bugger against future shocks.
* Both these channels reduce net lending in the economy, so the equilibrium interest rate has to fall in equilibrium.

####Calibration
* Wage process approximated by a 12-state Markov chain.
* For the transitions between employment and unemployment they follow Shimer (2005), which estimates the finding rate and the separation rate from CPS data.
* Unemployment benefit set to 4-% of average labor income.
* Bond supply calibrated to match the liquid assets to GDP ratio in 2006 of 1.78.

####Results
* After credit crunch:
  * Interest rate dynamics --- sharp initial fall followed by a gradual adjustment to a new, lower steady state.
  * Aggregate activity ---
    * in baseline flexible price specification, there is a mild output reduction of about 1.1%, in response to a shock that reduce long run debt by 10% of initial output.
      * direct effect reduces spending by a larger amount, but since interest rates also reduce (go negative to equilibrate), that pushes the consumption up, and so the response is not as high.
    * With nominal rigidity (ZLB), there is a larger contraction in output of about 1.7%.
* Consumption predictions of the model are ***sensitive to the chosen calibration target for consumer savings***.
  * When targeting median savings instead of average savings, they obtain a calibration with a larger partial equilibrium response and a lower interest elasticity of aggregate consumption, leading to much larger responses of output.
* On the supply side, the credit crunch leads to an increase in employment, as the indebted HHs want to work more.
  * There is also a decline in productivity, as the indebted HHs are less productive.
* In a model with durables, after a credit crunch, net borrowers are forced to deleverage and have to reduce consumption of durable and nondurable goods. Precautionary motive induces net lenders to save more by accumulating bonds and durables. Durables may increase or decrease depending on the strength of these two effects.
  * Net effect depends on the nature of the shock:
    * Shock to credit limit affects leads to a contraction in durable purchases.
    * Shock to credit spreads leads to contraction in durable purchases. Here the output effects can be large.


####Data/Computational Limitation
* **Rather than using Krusell and Smith's method of *approximate equilibria* to get prices, they keep the entire wealth distribution as a state variable, at the cost of focusing on a one-time shock.**
* They do not have default or long term debt in their model, since they want to limit the size of the state space. With the current computational limitations, that is necessary if they are going to keep track of the entire distribution as a state variable.

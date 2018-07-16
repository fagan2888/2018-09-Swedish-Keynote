# Notes -- Wong (2018)
## Transmission of Monetary Policy to Consumption and Population Aging
#

* Develop a life-cycle model with fixed rate mortgages that shows a higher responsiveness of younger people to interest rate shocks.
* The mortgage channel accounts for a sizable share of the young-old difference in response.
* Under an older demographic structure, aggregate consumption is less responsive to MP shocks.

####Relevant papers


####Key model features
* Household model of housing and mortgage decisions.
* Exogenous idiosyncratic and aggregate shocks.
  * Shock processes generate dynamics that resemble business cycle fluctuations in the data.
  * Allows the author to examine the HH's policy decisions in an environment with realistic dynamics in prices and aggregate variables, while preserving the HH heterogeneity in income and mortgages.
* Key features:
  1. HH pay a fixed cost to adjust their long-term assets. These fixed costs are paid when entering a new loan or refinancing an existing mortgage structure.
  2. Fixed mortgage structure. Mortgage rate is fixed unless the individual refinances their loan. The balance of the loan is amortized over the life of the individual.
* Model useful for separating the refinancing channel from other potential mechanisms, such as income volatility and liquidity constraints, which may be correlated with the HH's loan adjustment decisions.
* 3 types of assets:
  * 1-period asset with a short-term borrowing constraint
  * Long-term mortgage at a fixed interest rate
  * Unit of housing at price $p_t$
    * Depreciates at $\delta$
    * Rental rate $p_t^r$.
* Rental housing can be freely adjusted each period.
* Lump-sum transaction cost $\mathcal{F}$ when a HH enters a new loan or refinances an existing mortgage.
* Minimum equity requirement, $b_{jat} \leq (1-\phi)p_t h_{jat}$, where $\phi$ is the minimum down payment or equity that must be held in the house.
* Income:
  * $\log(y_{jat}) = \chi_a + \eta_{jat} + \phi_a(y_t)$
  * $\chi_a$ deterministic (age-specific)
  * $\eta_{jat} = \rho_{\eta} \eta_{j,a-1,t-1} + \phi_{jt}$, where $\phi_{jt}$ is i.i.d shock drawn from $\mathcal{N}(0,\sigma^2_{\eta})$
  * $\phi_a(y_t)$ captures age-specific fluctuations to income that arise from aggregate shocks to the aggregate income in the economy.
* Aggregate shocks to the economy
  * $S_t \equiv \{ \log(y_t), \log(p_t), r_t \}$
  * $S_t = A_0 + A_1 S_{t-1} + u_t$
* Mortgage rate a function of aggregate state, $S_t$.
* Rental rate a function of aggregate state, $S_t$.
* Household's state variable $z=\{a,S,y,\text{assets} \}$, where $a$ denotes age, $S$ and $y$ are the aggregate state and the idiosyncratic labor income realizations, respectively.
  * $\text{assets} = \{s,h^{own},b,R \}$ is a vector of start-of-period holding of short-term assets ($s$), housing owned ($h^{own}$), mortgage balance ($b$), and fixed rate on existing mortgage ($R$).



####Calibration
* Model period is annual.
* $\beta$ and $\alpha$ estimated to target the homeownership rate and the total (non-retirement) wealth-to-income ratio for the working age of 2.3 from SCF 2007.
  * $\beta=0.962$ and $\alpha=0.88$.
* Fixed transaction cost $\mathcal{F}$ is calibrated to target the average annual fraction of loans that are refinanced.
  * Freddie Mac's data to obtain quarterly refinancing fraction of 4.5% over 1999-2007.
  * $\mathcal{F}=\$5,000$, which is 2.8% of median house price in the model.
* **Initialize HHs in the model to match the distribution of income, liquid wealth net of debt, and housing for 25-30-year-old HHs in the SCF.**
* **Income**
  * $\eta_{jat}$ parameters set to match the annual persistence and standard deviation of residual earnings in the PSID.
    * *Process is discretized with **2 states** using the **Tauchen** method.*
  * $\phi_a$ based on the correlation between real aggregate income per capita and age-specific earnings in the CPS. (Young workers exposed more to aggregate shocks.)
* $A_0$ and $A_1$  set exogenously based on estimated coefficients from a reduced-form quarterly VAR of the variables in $S_t$ over the period 1984--2007.
  * Aggregate processes are discretized with **18 states** using the **Tauchen** method.
* Mortgage yield curve modeled as a linear function of the current aggregate short-term interest rate and aggregate economic activity. Allows capturing, in a reduced form way, changes in term and risk premia arising from shocks to the aggregate economy, without introducing additional states into the computation of the model.
  * $r_t^d = a_0 + a_1 r_t +a_2 \log(y_t)$, where $r_t^d$ denotes the mortgage rate of duration $d$, $r_t$ denotes the short-term interest rate, and $y_t$ denotes the real per-capita aggregate income.
* $\phi=0.2$, so 20% down-payment requirement.
* No short-term borrowing.
* House price-to-rent ratio is assumed to depend on the aggregate state, $S_t$, contemporaneously and its parameters are estimated using:
  * $\log(p_t^r) = \alpha_0 + \alpha_1 r_t + \alpha_2 \log(y_t) + \alpha_3 \log(p_t)$

####Results
* Model matches life-cycle features of:
  * Non-durable consumption
  * HH debt ratios
  * HH wealth-to-income
* **Monetary Policy Experiment** to quantify the difference in response of young/old due to the **refinancing channel** and the **home-ownership channel**.
  * Younger people have higher consumption response.
  * They also have a higher likelihood of refinancing.
  * Responses indistinguishable from the empirical estimates.
* With variable rate mortgages, the aggregate response to MP shocks increases by 2.8 times and the cross-sectional heterogeneity is 50% less.
* Population aging can reduce the responsiveness to monetary policy shocks.

####Data/Computational Limitation
* Data is not sufficiently rich to completely rule out other potential mechanisms that affect consumption.
  * ***For instance, the CEX data has sparse information on short-term financial asset holdings and does not have high frequency labor income data.***
* Does not provide estimates of the variance-covariance matrix of the residuals in the aggregate state equation.
* Interest rate is set exogenously, based on the aggregate state variable.
  * Response of interest rate shocks to the residuals of the aggregate state process are also set exogenously in a reduced-form estimation.
* 18 grid points for aggregate state variable $S_t$.
* Value functions approximated as multilinear functions in the states.
  * 20 knots for $h_{jat}^o$ and $b_{jat}$ and 10 knots for $s_{jat}$ and $r_{jat}$.
  * Knots spaced more closely together near the constraints for $b_{jat}$ and $s_{jat}$.
  * **Are 10 knots for $s_{jat}$ enough, since the younger HHs are going to be exactly where there is the most curvature?**
  * Optimal policies computed using a Nelder-Meade algorithm.

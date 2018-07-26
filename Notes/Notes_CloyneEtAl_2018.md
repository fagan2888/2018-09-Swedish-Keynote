# Notes -- James Cloyne, Clodomiro Ferreira, and Paolo Surico (2018)
## Monetary Policy When Households Have Debt: New Evidence on the Transmission Mechanism
#

* Use the HH survey data for the US and the UK to show that the aggregate response of consumption to interest rate changes is driven by HHs with a mortgage.
* Show that the general equilibrium effects on HH income couple with balance-sheet-driven heterogeneity in the marginal propensity to consume play a key role in the transmission of monetary policy.
* Very few datasets exist that contain information on HH expenditure and income, together with assets and liabilities over a long period of time.
  * They use UK's ***Living Costs and Food Survey***.
  * US's ***Consumer Expenditure Survey***.
* Main contribution is to provide a new set of empirical findings about the heterogeneous effects of monetary policy and use these results to assess different theoretical channels of monetary transmission.

####Empirical framework
* Use UK's LCFS and US's CEX surveys.
* Construct pseudo-cohorts based on housing tenure: renters, homeowners without mortgage, homeowners with mortgage.
* Use Romer and Romer (2004) MP shocks for the US and similar ones for the UK.
* Since they have data on both the US and the UK, they can also study whether fixed rate mortgages (FRM), prevalent in the US, and adjustable rate mortgages (ARM), prevalent in the UK, lead to large variations in households' responsiveness to MP shocks.
* Estimate the following equation
$$X_{i,t} = \alpha_0^i + \alpha_1^itrend + B^i(L)X_{i,t-1} + C^i(L)S_{t-1} + \sum_{q=2}^{4}D_q^i Z_q + u_{i,t}$$
* $X_{i,t}:$ real non-durable consumption, durable expenditure, or income recorded by HHs interviewed at time $t$.
* $S$: Monetary policy shock
* $Z$: Quarterly dummies
* $\alpha$: Intercepts and coefficients on a time trend polynomial
* $i \in \text{Mortgagors, Outright Owners, Renters}$

####Results
* Vast majority of the aggregate consumption response to a temporary unanticipated interest rate changes is driven by HHs with a mortgage.
  * When interest rates decrease, HHs with mortgage increase their spending and HHs without mortgage do not change their spending.
* The mechanism:
  * Expansionary MP $\implies$ increase in income for all groups.
  * Higher income only translates to higher consumption for mortgagors and renters.
  * This is because of the heterogeneity in the balance sheets of the 3 cohorts.
    * Renters have little wealth and, being young and poorer, are liquidity constrained.
    * Mortgagors tend to have little liquidity, despite owning sizable illiquid assets (wealth hand-to-mouth).
    * Outright homeowners have ample amount of liquid and illiquid assets.
* They find that FRMs vs ARMs do not play a major role in driving the HHs responsiveness.

####Data/Computational Limitation
* CEX data is very poor quality. Its shortcomings are well-documented.
  * Bad data on income.
  * Bad data on assets/liabilities.

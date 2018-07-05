# Notes -- Berger, Guerrieri, Lorenzoni, and Vavra (2018)
## House Prices and Consumer Spending
#

* Study the theoretical response of consumption to house prices in quantitative heterogeneous agent models.
* Several papers have pointed to house values as prime determinants of households' debt capacity.
* Their paper complementary to papers that endogenizes house prices.
  * Find a crucial role of the endogenous distribution of housing and debt for the size of house price effects.
* ***Prices and income are exogenous.***
* So they are studying the isolated effect of house prices on household consumption.
  * Their rule-of-thumb formula measures the strength of the causal effect between house prices and consumption and how it changes with economic conditions or across models.

##### Relevant papers
Heterogeneous agent equilibrium models with endogenous house prices -- Huo and Rios-Rull (2013) and Kaplan et al. (2016).


***Key model features***
* **The main distinguishing feature of the model is that households trade houses that provide housing services but which are subject to adjustment costs and they can borrow against the value of their houses.**
* Discrete time, OLG.
* Housing yields housing services one-for-one.
* House prices follow a geometric random walk with drif: $P_t = x_t P_{t-1}$
  * $x_t$ is an i.i.d. shock with $\mathbb{E}[x_t] = \exp^{\mu}$, so that $\mu$ is the trend growth rate of house prices.
  * **Permanent** house price shocks $\ln(x_t) \sim \mathcal{N}(\mu,\sigma_P)$
  * Should be interpreted as aggregate shocks, since they affect the value of existing and new houses.
* Rental cost $R_t = \phi P_t$.
* Fixed adjustment costs involved in buying and selling houses.
* Downpayment constraint.
* In addition to providing housing services, owner-occupied housing can be used as **collateral** for borrowing. (*These are short-term debts.*)
* Bequest motive.
* Cobb-Douglas preferences for non-durable consumption and housing services.
  * Simplifies computation and interpretation of results.
  * CES preferences give similar results.
    * *Relevant evidence from micro data consistently finds support for an elasticity close to unity.*
* $Y_{i,t} = \exp\{\chi(j_{it}) + z_{it} \}$, where $z_{it}$ is a transitory shock that follows an AR(1) process and $\chi(j_{it})$ is a lifecycle component.
* **In baseline model, Borrowing is based on one-period loans! Frictionless one-period debt allows HHs to adjust their borrowing costlessly every period. Collateral constraint must hold period-by-period. This would cause forced deleveraging!**
  * **The extension of the model to include long-term debt produces conterfactual results (see below).**
* I think they allow households to choose any household size they want.

***Calibration***
* Most parameters externally calibrated.
* $\alpha$, $\beta$, $\Phi$ (bequest motive), lump sum transfer at retirement, and rent-price ratio calibrated to hit life-cycle features:
  * housing, liquid wealth
  * homeownership by age
  * target liquid wealth rather than total non-housing wealth because it delivers MPCs in line with data.
  * *Model matches the data well.*
* Initial wealth based on 2001 SCF.
* Model matches some non-calibrated features of the data as well.


***Results***
* Consumption responses to house price shocks in the model are large.
  * Larger than PIH models.
  * Substantial household heterogeneity.
  * MPC x PH is a sufficient statistic for the model-implied response of consumption to house price shocks.
  * Sufficient statistic interesting, because house price increases have 4 main effects:
    * Substitution effect -- substitute away from housing, which is more expensive.
    * Ordinary income effect -- HHs poorer, because of increase in rental cost.
    * Endowment income effect -- HHs richer because of value of house.
    * Collateral effect -- For given housing choice, households can borrow more.
    * The 1st, 2nd, and 4th effect cancel each other out and only the 3rd one matters.
  * 'Permanent' shocks to house prices are important, because they alter the future path of house price growth.
  * House price movements remain neutral for a HH's lifetime budget constraint, but borrowing constraints mean that consumption responds more to current than future income, so the endowment effect dominates.
* Aggregate elasticity depends on the endogenous joint distribution of MPCs and housing.
  * The size of the housing price effects varies with age, leverage, homeownership status, and wealth.
* Responses can change depending on changes in credit supply.
* Length of house price booms and households' expectations of future house price growth also affect the sensitivity of consumption.

***Long-term mortgage in extension***
* Households can prepay mortgages costlessly, but must pay the fixed cost of refinancing a mortgage to move to negative $A_t$ from positive $A_t$.
  * So choice variable is $c_t$, and that together with initial liquid assets balance determine whether $A_t$ is negative or not. **A little different way of introduces refinancing.**
* Mortgages are **NOT** long-term in their baseline model!!!
  * In the extension, HHs always exhaust liquid assets before taking on any mortgage debt.
  * So if you are a renter, $A_t \geq 0$
  * If you are a homeowner, $A_t$ can be $<0$, but then you have to make minimum payments which are given by the geometric schedule, i.e. $A_t \geq \chi A_{t-1}$.
  * The interest rate on mortgages is the same as on liquid assets, with a required amortization rate on mortgages, following Gorea and Midrigan (2017), which is set to match the half-life of a 30-yr mortgage.
  * Allows them to reduce a state variable and still have long-term mortgages.
    * **Not the typical way of modeling long-term mortgages. Also, have to assume the same interest rate for both $A_t<0$ and $A_t>0$.**
    * **No with a mortgage debt has any liquid assets!**
    * *Any other problems with this?*
* No default.
* The presence of long-term debt and the ability for borrowers to remain underwater leads to a feature of the model that the consumption of highly leveraged households does not respond to mortgage debt forgiveness.

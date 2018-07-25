# Notes -- Jiaxiong Yao, Andreas Fagereng, and Gisle Natvik (2015)
## Housing, Debt, and the Marginal Propensity to Consume
#

* Analyze how housing and mortgage debt affect households' marginal propensity to consume out of wealth.
* Use detailed HH-level Norwegian registry data to show that after controlling for wealth, HHs with higher leverage respond more to wealth changes.
* Build a structural lifecycle model to show that MPC out of wealth for new homeowners is higher because of high leverage.
  * Hence, total wealth is not a sufficient statistic.
* Model successfully targets the life cycle profiles of HH balance sheets in the micro data.

####Relevant papers


####Key model features
* Finite-horizon life cycle model.
* HHs identical in preferences and their expectations about the future.
* 3 asset classes:
  * Housing
  * Debt
  * Other financial assets
* HHs face uninsurable income risks and borrowing constraints.
  * Permanent and transitory component depend on age.
* HHs choose between renting and owning a home.
* Transaction costs associated with buying and selling the house.
  * These make homeowners move infrequently.
* 3 constraints:
  * Unsecured borrowing constraint (depends on permanent income)
  * LTV constraint
  * Loan-to-income constraint.
* **No distinction between mortgage debt and short-term debt.**
* Transaction costs and collateral constraint make housing illiquid.
* Bequest motive.
* **No house prices.**

####Calibration
* External calibration for:
  * transaction costs,
  * the deterministic component of income,
  * age-varying labor income risk,
  * Initial wealth distribution.
* Internal calibration for:
  * CRRA
  * Discount factor
  * Weight on housing consumption
  * Service flow from housing consumption
  * Weight on bequest
* Targets
  * Age profiles of median net worth and median housing in the data
  * Distribution of housing across HHs

####Results
* Empirical results:
  * Impute consumption data using the residual of disposable income and savings.
  * Relationship between leverage and consumption responses to wealth changes holds at a disaggregated HH level even in a more tranquil environment than the one studied in Mian, Rao, and Sufi (2013).
  * By aggregating the data they find that the role of leverage is not simply due to preference heterogeneity.
* Structural model results:
  * The combination of proximity to the borrowing constraint and high transaction costs for new homeowners raises their MPC out of wealth.
  * HHs MPC does not monotonically decrease in wealth.
    * A recent home buyer has a higher MPC than she had immediately before buying the house.
    * Households with larger houses have higher debt $\implies$ have higher MPC than those with smaller balance sheets.
  * *HHs with higher leverage respond more to wealth changes, and thus when wealth declines they would optimally choose to de-lever more than others.*
  * Model generates heterogeneous balance sheets because of carefully modeling the heterogeneity in housing choices.
    * The source of balance sheet heterogeneity helps to account for the empirically observed link between leverage and HHs' heterogeneous consumption responses to wealth changes.
  * Experiment of decreasing LTV:
    * Reduces housing transactions;
    * Increases consumption by around 1%.
    * Lower debt for young and higher debt for older HHs.
    * Average leverage in the economy is unaffected.
    * Different LTVs do not have very different marginal sensitivities of consumption to wealth changes.
      * Distribution of wealth in the economy does not change under different LTVs.
      * Under low LTV the distribution of leverage shifts to the left.

####Data/Computational Limitation
* Computational limitations lead to mortgage being modeled as short-term debt. Treating it is a long-term debt would require adding an extra state variable.
* No prices or other aggregate shocks.

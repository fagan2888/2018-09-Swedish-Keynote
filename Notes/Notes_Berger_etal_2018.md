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
* Housing yields housing services one-for-one.
* House prices follow a geometric random walk with drif: $P_t = x_t P_{t-1}$
  * $x_t$ is an i.i.d. shock with $\mathbb{E}[x_t] = \exp^{\mu}$, so that $\mu$ is the trend growth rate of house prices.
  * **Permanent** house price shocks $\ln(x_t) \sim \mathcal{N}(\mu,\sigma_P)$
* Rental cost $R_t = \phi P_t$.
* Fixed adjustment costs involved in buying and selling houses.
* In addition to providing housing services, owner-occupied housing can be used as **collateral** for borrowing. (*These are short-term debts.*)
* Bequest motive.
* Cobb-Douglas preferences for non-durable consumption and housing services.
  * Simplifies computation and interpretation of results.
  * CES preferences give similar results.
    * *Relevant evidence from micro data consistently finds support for an elasticity close to unity.*
* $Y_{i,t} = \exp\{\chi(j_{it}) + z_{it} \}$, where $z_{it}$ is a transitory shock that follows an AR(1) process.

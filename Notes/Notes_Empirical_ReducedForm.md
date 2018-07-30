# Notes -- Empirical reduced form studies


### Cloyne, Ferreira, and Surico (2018) - Monetary Policy When Households Have Debt: New Evidence on the Transmission Mechanism
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
* $X_{i,t}$: real non-durable consumption, durable expenditure, or income recorded by HHs interviewed at time $t$.
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

----------

### Adelino, Schoar, Severino (2016) - Loan Originations and Defaults in the Mortgage Crisis: The Role of the Middle Class
#

* Provide new analysis of both
  * the debt originations dynamics leading up to the financial crisis;
  * the patterns of default during the crisis.
* Their results run counter to the subprime narrative.
* Show that mortgage originations increased for borrowers across all income levels and FICO scores, not just the subprime and poor borrowers.
  * The relation between mortgage growth and income growth at the individual level remained positive throughout the pre-2007 period.
* All income groups increased their delinquencies in the crisis.
  * The share of mortgage dollars in delinquency stemming from the lowest income group ***decreased*** during the financial crisis.
* Results consistent with a demand-side view, where homebuyers and lenders bought into increasing house values and borrowers defaulted after prices dropped.

#

* Mian and Sufi (2009)'s results are based on ZIP code level data. They find that credit growth and income growth decoupled prior to the crisis.
  * Growth in the ZIP code level mortgage originations combines increases at the intensive margin with the extensive margin.
* This paper uses HH level data to show that the negative relationship at the ZIP code level is only due to the extensive margin.
  * The negative correlation is concentrated in high-income ZIP codes that saw fast per capita income growth and moderate growth in the number of mortgages during this period.
* Show that the expansion of credit across the income distribution is consistent for all mortgage products.
* Show that areas with high house price growth saw a significant increase in flipped properties $\implies$ a larger fraction of HHs held recently originated mortgages and thus were near or at their maximum leverage level.

#

* Their results point to an explanation in which house price increases and drops played a central role during the credit expansion and in subsequent defaults.
* Their results point to a need for ***macroprudential regulation*** to prevent the systemic buildup of debt across households and to ensure that the financial system has a sufficient slack to guard against systemic shocks that are not tied to individual borrower characteristics.

####Relevant papers
* A number of papers have shown that credit rose significantly more in areas with high rates of house price appreciation, particularly through second liens and cash-out refinancing (consistent with Hurst and Stafford 2004; Lehnert 2004; Campbell and Cocco 2007; Bostic, Gabriel, and Painter 2009; Mian and Sufi 2011; Brown, Stein, and Zafar 2015).
* Role of house prices in driving defaults is shown in Foote, Gerardi, and Willen 2008; Haughwout, Peach, and Tracy 2008; Mayer, Pence, and Sherlund 2009; Palmer 2014; Ferreira and Gyourko 2015.
* It is beyond the scope of the paper to analyze the drivers of house price dynamics. The cumulative effect of low interest rates over the decade leading up to the housing boom may have increased house prices through lowering user costs and increased demand for credit (Rajan 2010; Himmelberg, Mayer, and Sinai 2005; Bernanke 2007).
* ***Extrapolative expectations may have played a role in driving up house prices.*** Among many others, Foote, Gerardi, and Willen (2012), Cheng, Raina, and Xiong (2014), Shiller (2014), and Glasser and Nathanson (2015) argue that buyers as well as investors in the mortgage market held highly optimistic beliefs about house price growth.
* Several papers focus on the expansion of credit to risky or marginal borrowers (Nadauld and Sherlund 2009; Loutskina and Strahan 2009; Keys et al. 2010; Demyanyk and Van Hemert 2011; Dell'Ariccia, Igan, and Laeven 2012; Agarwal et al. 2014; Landvoigt, Piazzesi, and Schneider 2015).

####Data
* Home Mortgage Disclosure Act (HMDA)
* Income data from the IRS a tthe ZIP code level
* $5\%$ random sample of all loans in the Lender Processing Services data (LPS, formerly known as McDash)

----------

### Adelino, Schoar, Severino (2012) - Credit Supply and House Prices: Evidence from Mortgage Market Segmentation
#

* Show that easier access to credit significantly increases house prices by using exogenous changes in the conforming loan limit as an instrument for lower cost of financing.

#

* Key difficulty in measuring the effect of credit on the price of housing is establishing the direction of causality between credit conditions and house price growth.
* In this paper, they use annual changes in the conforming loan limit (CLL) as an instrument for exogenous variation in the cost of credit, and in the availability of credit itself.
  * CLL determines the maximum size of a mortgage that can be purchased or securitized by Fannie Mae or Freddie Mac.
  * Mortgages below the conforming loan limit are both cheaper and easier to obtain than above this limit.
* Run difference-in-difference regressions.
* Show that exogenous changes in the availability of credit due to changes in the CLL have a significant effect on the pricing of houses that can be financed more easily using a conforming loan.
  * A home that becomes eligible for easier access to credit due to an increase in the CLL has on average a $0.45\%$ higher price.
* These results are stronger pre-2005, because access to other forms of financing was more difficult during that time.
* The results are stronger in ZIP codes with the lowest income growth.
* Results do not support the view that credit market conditions purely respond to household demand, but point instead to a directional effect that easier credit supply leads to an increase in house prices.
  * The ***supply*** of housing does not react strongly to the CLL.

####Relevant papers
* Role of credit on the level of asset prices and the creation of bubbles (Kiyotaki and Moore, 1997; Allen and Gale, 1998; Bernanke and Gertler, 2001; Kindleberger, Aliber, Solow, 2005; Mian and Sufi, 2009; Brunnermeier, Eisenbach and Sannikov, 2012).
* For the US housing market many have proposed that easy access to credit, and reduced cost of credit, fueled the increases in housing prices as well as the subsequent reversal in house price growth when credit dried up (Favilukis, Ludvigson, and Van Nieuwerburgh, 2010; Hubbard and Mayer, 2008; Khandani, Lo, and Merton, 2009; Pavlov and Wachter, 2010; Mayer, 2011).
* Propoenents on the other side of the debate argue that cheap credit alone cannot explain the house price boom and bust (Glaeser, Gottlieb, and Gyourko, 2010).

####Data
* Ownership transfers of residential properties available in deeds and assessors records for the cities that are covered by Dataquick.

----------

### Mian and Sufi (2018) - Finance and Business Cycles: The Credit-Driven Household Demand Channel
#

* Study the ***credit-driven household demand channel:*** Expansions in credit supply, operating primarily through household demand, have been an important driver of business cycles.
* This channel helps explain the recent global recession and describes economic cycles in many countries over the past 40 years.
* This channel rests on 3 pillars:
  1. Expansion in credit supply, as opposed to technology shocks or permanent income shocks, is a key force generating expansion and contraction in economic activity.
  2. The expansionary phase of the credit cycle affects the real economy primarily by boosting household demand as opposed to boosting productive capacity of firms in the economy.
  3. The contraction in the aftermath of a large increase in household debt is driven initially by a decline in aggregate demand which is amplified by nominal rigidities, constraints on monetary policy, and banking sector disruptions.
* The contractionary phase of the business cycle is a consequence of the excesses generated during the expansionary phase.
* Discuss how the presence of behavioral biases and aggregate demand externalities may be able to generate endogenous boom-bust credit cycles.
* ***What triggers the expansion in credit supply that initiates the credit cycle and its business cycle implication?*** -- "**Ans: financial excess**"
  * They conclude that a shock that leads to a rapid influx of capital into the financial system often triggers an expansion in credit supply.
  * Recent manifestations -- rise in inequality in the US (Kumhof et al. (2015)) and the rapid rise in savings by many emerging markets ("global savings glut" Bernanke (2005)).
* Discussing the fundamental causes of credit supply expansion, they focus on some major trends:
  * long-term secular rise in private credit-to-GDP ratios (Jorda et al (2016))
  * accompanied by decline in real long-term interest rates
  * rise in within-country inequality
  * rise in across-country "savings gluts"

#

* The interaction between house prices and credit supply expansions has led to the question of whether the increase in house prices is the initial shock and the rise in household debt is a response, as argued by Laibson and Mollerstrom (2010), Foote et al. (2012), and Adelino et al. (2017).
* According to Mian and Sufi, the weight of the empirical evidence sugggests that house prices are a ***response*** to credit supply expansion rather than a ***cause***.
  * Country-level data sets also support the view that credit supply initiates the rise in house prices.
* The rise in house prices is an amplification mechanism because HHs often borrow aggressively against the rising value of their home.

#

* **Is the expansion of credit supply working through boosting firm investment/employment, or is it working by boosting aggregate demand by enabling HHs to increase consumption?**
  * They claim that in recent history, the ***household demand channel appears dominant.***
  * Over the past 40 years, the boom-bust cycle generated by a rise in debt is unique to HH debt.
  * Increases in firm debt or government debt do not produce the same pattern.

#

* Heterogeneous beliefs and behavioral biases needed to explain why an expansion in credit supply leads to a boom-bust cycle.
  * An explanation based on rational expectations and externalities has a major problem: it predicts that individuals during a credit boom anticipate a slowdown in the economy. *This prediction is counterfactual.*

####Relevant papers
* Exogenous changes in credit supply have large effects on house prices --- Adelino et al. (2014), Favara and Imbs (2015), Di Maggio and Kermani (2017), Mian et al. (2017a).
* Quantitative macroeconomic models that show how changes in credit affect house prices --- Favilukis et al. (2017), Justiniano et al. (2015), Landvoigt (2016).
* One reason for over-borrowing is the presence of aggregate demand externalities --- Eggertsson and Krugman (2012), Farhi and Werning (2015), Huo and Rios-Rull (2016), Korinek and Simsek (2016), Schmitt-Grohe and Uribe (2016), Guerrieri and Lorenzoni (2017).
* Another reason for over-borrowing is the presence of pecuniary externalities due to "fire sales" --- Shleifer and Vishny (1992), Kiyotaki and Moore (1997), Caballero and Krishnamurthy (2001), Lorenzoni (2008), Bianchi (2011), Davila (2015).

----------

### Mian, Sufi and Khoshkhou (2018) - Partisan Bias, Economic Expectations, and Household Spending
#

* Does partisan bias influence an individual's assessment of future economic conditions as reported in surveys?
  * Find that partisan bias exerts a significant influence on survey measures of economic expectations.
* If so, has partisan bias in expectations formation risen over time?
  * The bias is increasing substantially over time.
* Do movements in economic expectations driven by partisan bias influence household spending?
  * Find little evident that economic circumstances change to the benefit of areas supporting the new President after elections.
  * *Consumer expectations correlate with spending when they are driven by fundamental shocks (such as house prices), but they do not correlate with spending when they are driven by partisan bias.*

#### Data
* University of Michigan Survey of Consumers
* Gallup

----------

### Mian, Sufi and Verner (2017) - Household Debt and Business Cycles Worldwide
#

* An increase in HH debt-to-GDP ratio predicts a subsequent reversal in debt and lower subsequent GDP growth.
* Show that HH debt booms are associated with low interest rate spread environments and periods in which credit is flowing toward riskier borrowers.
* The negative effect of an increase in HH debt on subsequent growth is stronger in situations in which MP is constrained.
* Evidence is most consistent with a model in which an outward shift in credit supply is the fundamental shock that explains the rise in HH debt.
  * It is likely that the incorrect expectations formation by lenders and investors (credit market sentiment) is an important factor in explaining the outward shift in credit supply.
* What is the fundamental source of the increase in credit supply?
  * Models of credit market sentiments suggest that lenders begin to ignore downside risks during debt booms, which makes the willing to make credit more available on cheaper terms (Gennaioli, Shleifer, and Vishny 2012; Greenwood, Hanson, and Jin 2016; Landvoigt 2016).
* Highlight the importance of a debt-driven "consumption" channel for business cycle dynamics.

#### Avenues of research
* Why is the medium-run impact of HH debt growth on output larger than that of firm debt growth?
  * ***There is little theoretical or empirical research to help answer this question.***
  * One reason could be the strong link between HH debt and house prices. Mortgage credit expansion can cause a boom and bust in house prices, and mortgage borrowing exposes HHs to potentially large changes in net worth when house prices fall.
  * Behavioral biases of HHs generate a large elasticity of HH borrowing with respect to credit supply shocks $\implies$ credit supply shocks work through the HHs as opposed to firm sector.
    * Behavioral biases such as time inconsistency (Laibson 1997)
    * overoptimism about the ability to repay, or overconfidence about the riskiness of future income (Brunnermeier and Parker 2005).

----------

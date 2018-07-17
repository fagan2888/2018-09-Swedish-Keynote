## Questions for NBER SI

### 07/16/2018

#### KMV

1. In contrast to Mian and Sufi's '*credit supply view*', in which lose lending conditions lead to higher borrowing and higher house prices, the KMV paper proposes the '*expectations view*'. In their model, looser credit barely affects house prices, but it does increase the homeownership rate.
  * The way they disconnect the dynamics of homeownership from those in house prices is as follows:
    * Renters are unconstrained in their housing consumption choice due to access to the rental market, but there are a number of renters who are constrained in their housing tenure due to down-payment constraints.
    * When the borrowing constraints are relaxed, they opt to buy instead of renting; however, they purchase housing of similar size of the one they rented, and so the total housing demand does not rise and house prices are unaffected.
  * In the calibration section of the paper, there is an upper bound on the rental stock, which is less than most of the housing stock available for ownership. If there are a bunch of renters who are renting close to the upper bound of the rental stock and wish to consume higher housing services, but cannot, due to down-payment constraints, then a loosening of the constraints would indeed push the housing demand up and also put an upward pressure on house prices.
  * ***Q1: Does one of their core results that loose credit conditions does not affect house price, rely on not having many HHs pushed against the upper bound of the rental services?***
2. Their model allows HHs to borrow against the value of their house. These are short-term single period debt contracts, which they call HELOCs.
* ***Q2a: Do HELOCs play a big role in driving the HHs' responsiveness to house price shocks?***
* ***Q2b: Is there a big mass of homeowners who are borrowing using HELOCs?***
3. Rental prices have been roughly stable. Even in their model, a rise in expected future house prices leads to roughly constant rental prices.
* ***Q3: Why then do they need to make rental prices a function of house prices, which are determined in a more complex manner? Would keeping rental prices fixed affect their results?***
4. This one is a little technical in nature:
  * Both the KMV 2017 and Garriga and Hedlund papers have endogenous mortgage pricing. It's a way to have the lenders price the risk of default by prospective homeowners.
  * Although it is not specified, my guess is that both these papers have a fixed number of mortgage levels that are offered to prospective homeowners.
  * This endogenous pricing plays a *very* important role in their model because with optimistic expectation, lenders believe that the house prices will continue to rise, thus, the likelihood of households' default reduces. This lowers the premium charged during mortgage pricing. As a result optimistic expectations also lead to an expansion of credit.
  * ***Q4: I am very interested in knowing how they program this mortgage pricing? Do they solve rh's problem for $N \times M$ (mortgage debt, mortgage price) pairs and then let the zero-profit condition for the lender determine what mortgage price is used in equilibrium?***
5. Another technical question:
* ***Q5: How long does their model take to solve? It would be a good benchmark to compare my own Python code to.***

#### Garriga and Hedlund
*

------------------------------------------------------------------------

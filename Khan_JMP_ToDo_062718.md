# ToDo list for Khan_JMP -- 062718

Things that need to be added to the model:
1. Add permanent shocks to income as a Markov process.
  * `Status: ` **DONE**
2. Adjust discounting to include a positive probability of death.
  * `Status: ` **DONE**
3. Add unemployment.
    * This will be done using an extremely low and persistent value for the permanent shock.
       * NO -- there is an extremely low value for the TRANSITORY shock; the permanent hit is 10%
    * Roughly a hit of 10% to permanent income due to unemployment.
    * ~~Confirm with Prof. Carroll if there is anything else that needs to be factored in when adding unemployment.~~
  * `Status: `

  `Confirmation needed: With a Markov process for the permanent shock to income, which of these 2 alternate specifications is the best way to set up unemployment?`
##### Specification-1 (Unexpected unemployment shocks)
  * $\psi_t$ -- Permanent shock to income
    * 4-state Markov process
    * $\psi = \{L,H,0.9 L,0.9 H\}$
    * Transition matrix given by $\left(\begin{array}{cccc} p & 1-p & 0 & 0\\ 1-q & q & 0 & 0\\ 0 & 0 & p & 1-p\\ 0 & 0 & 1-q & q \end{array}\right)$.
  * $\theta_t$ -- Transitory shock to income
    * Log-normal distribution (**7 shock points**)
  * $Y_t = \psi_t . \theta_t$
  * In this case, the experiment of hitting the economy with an unemployment shocks would look like the following:
    * In normal times,
      * households draw permanent income shocks from $\{L,H\}$, with the transition probabilities given by the upper-left quadrant of the transition matrix.
      * transitory shocks are drawn from a log-normal distribution.
    * The unemployment shock hits all, or a fraction, of the households at time $t=t'$.
      * At $t'$, $\theta_{t'}=0$, $\implies$ $Y_t=0$. Alternatively, $\theta_{t'}$ could be made very small.
      * For $t>t'$, the permanent shocks are drawn from $\{0.9L,0.9H\}$ and the transition probabilities are given by the lower-right quadrant of the transition matrix. Transitory shocks are drawn from the original log-normal distribution.


##### Specification-2 (Expected unemployment shocks)
* $\psi_t$ -- Permanent shock to income
  * 2-state Markov process
  * $\psi = \{L,H\}$
  * Transition matrix given by $\left(\begin{array}{cccc} p & 1-p \\ 1-q & q \\ \end{array}\right)$.
* $\theta_t$ -- Transitory shock to income
  * Log-normal distribution (**7 shock points**)
* $\mathcal{U}_t$ -- Unemployment shock
  * 2-state Markov process
  * $\mathcal{U} = \{0,10\%\}$
  * Transition matrix given by $\left(\begin{array}{cc} \mu & 1-\mu\\ 0 & 1 \end{array}\right)$.
* $\mathcal{E}_t \equiv 1-\mathcal{U}_t= \{1,0.9\}$ $\hspace{10pt}$ -- Employment shock
* $Y_t = \mathcal{E}_t. \psi_t . \theta_t$
* In this case, the experiment of hitting the economy with an unemployment shocks would look like the following:
  * Households start in the employed state, i.e. $\mathcal{E}_t = 1$. They draw permanent income shocks from $\{L,H\}$ and transitory shocks from the log-normal distribution.
  * With probability $1-\mu$, all or a fraction of households become unemployed in the next period, $t'$.
    * In $t'$, $\mathcal{E}_{t'}=0.9$ and $\theta_{t'}=0$ (or could be very small number), $\implies Y_{t'}=0$.
    * For $t>t'$, $\mathcal{E}_t=0.9$, the permanent shocks are still drawn from $\{L,H\}$, and transitory shocks are also drawn from the original log-normal distribution.

********************************************************

Calibration and experiment

1. Make sure the model can match pre-crisis default rates under lose lending standards.

2. Hit the model with unexpected unemployment shocks.\

3. Run a counterfactual with tighter lending standards and hit the economy with unexpected unemployment shocks.

4. Compare (2) and (3) using the following metrics:
    * Default rate
    * Consumption response
    * Wealth distribution -- ***Confirm with Prof. Carroll.***

* `Status:`

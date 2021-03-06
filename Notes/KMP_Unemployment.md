#### Krueger et al. 2016 (similar to Krusell and Smith (1998))

* Aggregate risk
  * $1^{st}$-order Markov process
  * $Z\in\{Z_l,Z_h\}$
  * Transition probability $\pi(Z'|Z) = \left(\begin{array}{cc} \rho_l & 1-\rho_l\\ 1-\rho_h & \rho_h \end{array}\right)$
  * Stationary distribution denoted by $\Pi$, where $\Pi_Z$ is the fraction of time the economy is in aggregate state $Z$.
* Unemployment risk
  * $1^{st}$-order Markov process.
  * Current employment status $s \in S=\{u,e\}$.
  * ***Transition probability*** denoted by $\pi(s'|s,Z',Z)$, so it is ***dependent on aggregate state as well***.
  * ***Assume*** that the share of HHs in a given idiosyncratic employment state $s$ only depends on the current aggregate state $Z$.
    * Denote by $\Pi_Z(s)$ the deterministic fraction of HHs with employment state $s$ if the aggregate state is $Z$.
  * Unemployment risk determined by 4 2x2 transition matrices $\pi(s'|s,Z',Z)$, one each for a given $(Z,Z')$ combination. Each $\pi(s'|s,Z',Z)$ has the form
    * $\left(\begin{array}{cc} \pi_{u,u}^{Z,Z'} & \pi_{u,e}^{Z,Z'}\\ \pi_{e,u}^{Z,Z'} & \pi_{e,e}^{Z,Z'} \end{array}\right)$
  * ***If HH is unemployed, they only earn unemployment benefits.***
* Income risk (conditional on employment)
  * Log-earnings of HHs follow a process with both transitory and persistent shocks.
    * $log(\gamma') = p + \epsilon$
    * $p' = \phi p + \eta$
  * Parameters are estimated using PSID data and then the **Rouwenhorst procedure** is used to discretize the persistent part of the process into a **seven-state Markov chain**.

------------------------------------------------------------------------

#### Some comments

CDC made the following comments regarding the income process and unemployment:
1. Unemployment is not a self-absorbing state.
2. An unemployed HH has a very low transitory income.
3. Contingent on becoming unemployed, the expected permanent income drops by 10%.
    * In normal times, the likelihood of going to a very low states of the permanent component of income is very low.
    * However, in bad times, the likelihood of going to very low states increases.

#

I will make some brief comments before moving on to describing my specification and how I am calibrating it.
1. If the persistent component of income is independent of the employment state, then the stationary distribution generated from the Markov process for the persistent component of income will also be independent of the employment state.
    * We, however, want there to be a correlation between the employment state and the expected value of the persistent income.
    * As a result, we will have to set up the transition probabilities of our persistent income the same way Krueger et al. or Krussell and Smith set up the transition probabilities for unemployment. They made the unemployment transition probabilities dependent on the the aggregate risk, we will have to make the persistent shock's transition probabilities dependent on the unemployment risk (or aggregate risk).
    * What this means, however, is that more parameters need to be calibrated and the unemployment risk is in fact an aggregate risk rather than an idiosyncratic risk.
2. If the unemployment risk is an aggregate risk, then I will have to think about why it affects income but not house prices, because, currently, are independent from the income process or aggregate risk.

------------------------------------------------------------------------

#### My specification

* In order to describe the income process, we need 3 state variables,
  * $\omega$ -- employment (or aggregate) state.
  * $\mathbb{p}$ -- persistent component of income.
  * $\theta$ -- transitory component of income.
* $\omega$ -- employment state (or can be called an aggregate state, in which case it becomes H,L rather than e,u)
  * 2-state Markov chain: $\omega \in \Omega=\{e,u\}$
  * Denoting the transition probability of switching from employment (unemployment) in period $t$ to employment (unemployment) in period $t+1$ by $\rho_{e}$ ($\rho_{u}$), the transition matrix is given by:
    * $\pi = \left(\begin{array}{cc} \rho_{e} & 1-\rho_{e}\\ 1-\rho_{u} & \rho_{u} \end{array}\right)$
* $\mathbb{P}$ -- Persistent component of income.
  * 3-state Markov chain: $\mathbb{p} \in \mathbb{P}= \{\mathbb{p}_{1},\mathbb{p}_{2},\mathbb{p}_{3}\}$
  * *The transition probabilities for this Markov process depend on the employment state and are given by $\lambda(\mathbb{p}'|\mathbb{p},\omega,\omega')$. Assuming the law of large numbers, the idiosyncratic risk averages out, and only the aggregate risk determines the number of agents in a specific idiosyncratic persistent income state, $\mathbb{p}$. Moreover, we assume that the share of households in a given idiosyncratic persistent income state $\mathbb{p}$ only depends on the current aggregate state $\omega$. This assumption imposes consistency restrictions on the transition matrix $\lambda(\mathbb{p}'|\mathbb{p},\omega,\omega')$.*
  * We merge the $(\omega,\mathbb{p})$ states together to form one state variable that captures both the employment status and the persistent income.
  * Denote by $\lambda_{\omega\mathbb{p},\omega'\mathbb{p}'}$ the probability of transitioning from employment state $\omega$ and persistent income $\mathbb{p}$ in time $t$ to employment state $\omega'$ and persistent income $\mathbb{p}'$ in time $t+1$.
  * Then the transition matrix with 2 employment states and 3 persistent income states is given by:
    * $\lambda = \left(\begin{array}{cccccc}
      \lambda_{e\mathbb{p}_1,e\mathbb{p}_1} & \lambda_{e\mathbb{p}_1,e\mathbb{p}_2} & \lambda_{e\mathbb{p}_1,e\mathbb{p}_3} & \lambda_{e\mathbb{p}_1,u\mathbb{p}_1} & \lambda_{e\mathbb{p}_1,u\mathbb{p}_2} & \lambda_{e\mathbb{p}_1,u\mathbb{p}_3} \\ \lambda_{e\mathbb{p}_2,e\mathbb{p}_1} & \lambda_{e\mathbb{p}_2,e\mathbb{p}_2} & \lambda_{e\mathbb{p}_2,e\mathbb{p}_3} & \lambda_{e\mathbb{p}_2,u\mathbb{p}_1} & \lambda_{e\mathbb{p}_2,u\mathbb{p}_2} & \lambda_{e\mathbb{p}_2,u\mathbb{p}_3} \\
      \lambda_{e\mathbb{p}_3,e\mathbb{p}_1} & \lambda_{e\mathbb{p}_3,e\mathbb{p}_2} & \lambda_{e\mathbb{p}_3,e\mathbb{p}_3} & \lambda_{e\mathbb{p}_3,u\mathbb{p}_1} & \lambda_{e\mathbb{p}_3,u\mathbb{p}_2} & \lambda_{e\mathbb{p}_3,u\mathbb{p}_3} \\
      \lambda_{u\mathbb{p}_1,e\mathbb{p}_1} & \lambda_{u\mathbb{p}_1,e\mathbb{p}_2} & \lambda_{u\mathbb{p}_1,e\mathbb{p}_3} & \lambda_{u\mathbb{p}_1,u\mathbb{p}_1} & \lambda_{u\mathbb{p}_1,u\mathbb{p}_2} & \lambda_{u\mathbb{p}_1,u\mathbb{p}_3} \\ \lambda_{u\mathbb{p}_2,e\mathbb{p}_1} & \lambda_{u\mathbb{p}_2,e\mathbb{p}_2} & \lambda_{u\mathbb{p}_2,e\mathbb{p}_3} & \lambda_{u\mathbb{p}_2,u\mathbb{p}_1} & \lambda_{u\mathbb{p}_2,u\mathbb{p}_2} & \lambda_{u\mathbb{p}_2,u\mathbb{p}_3} \\
      \lambda_{u\mathbb{p}_3,e\mathbb{p}_1} & \lambda_{u\mathbb{p}_3,e\mathbb{p}_2} & \lambda_{u\mathbb{p}_3,e\mathbb{p}_3} & \lambda_{u\mathbb{p}_3,u\mathbb{p}_1} & \lambda_{u\mathbb{p}_3,u\mathbb{p}_2} & \lambda_{u\mathbb{p}_3,u\mathbb{p}_3}
      \end{array}\right)$.
    * Each of these rows sums to 1.
    * Each row of the 4 different quadrants in this transition matrix sums to the transition probabilities associated with their respective employment state transition.
      * e.g. if we look at the lower-right quadrant of $\lambda$, each of the rows sums to $\rho_{u}$.
    * Since this is a **regular Markov Chain**, from the **Fundamental Limit Theorem for Regular Chains** we know that there exists a unique stationary distribution for $\lambda$. Call this distribution $\Lambda$.
    * ***NOTE: Calibration has to be done in a way that it yields a stationary distribution which results in $\mathbb{E}(\mathbb{p}|\omega=u) = 0.9 \mathbb{E}(\mathbb{p}|\omega=e)$.***
* $\theta_t$ -- Transitory shock to income
  * If $\omega_t=u$, then $\theta=\varepsilon$
  * If $\omega_t=e$, then draw from log-normal distribution (**7 shock points**)


#
* Calibration:
  * **NOTE: My intuition regarding how to calibrate this Markov process is better if we think of $\omega$ as an aggregate state of the economy, rather than a more specific aggregate employment state, so I will outline below how I would go about calibrating if $\omega$ described the aggregate state of the economy (high or low), with a transition matrix given by:**
    * $\pi = \left(\begin{array}{cc} \rho_{h} & 1-\rho_{h}\\ 1-\rho_{l} & \rho_{l} \end{array}\right)$
  * $\omega$ is a regular Markov Chain, so it has a stationary distribution, call it $\Pi$, which satisfies
    * $\Pi(h) = \frac{1-\rho_{l}}{2-\rho_{h}-\rho_{l}}$
    * $\Pi(l) = \frac{1-\rho_{h}}{2-\rho_{h}-\rho_{l}}$
    * $\Pi(l)$ is the fraction of time that the economy is in a severe recession and $\Pi(h)$ is the fraction of time that the economy is in a normal state.
    * We calibrate $\rho_{l}$ to match the expected length of a severe recession. For this Markov process, $EL_{l} = \frac{1}{1-\rho_{l}}$.
    * Given $\rho_l$, we choose $\rho_h$ to match the fraction of time the economy is in a severe recession, $\Pi(l)$.
    * Using Krueger et al. (2016)'s definition of a recession on data from 1948--2014, we get an expected length of recession of 22 quarters and a fraction of 16.48% recessionary quarters. This implies $\rho_l = 0.9545$ and $\rho_h = 0.9910$.
  * The next step is to calibrate $\lambda$.
    * Denote the stationary distribution of this Markov process by $\Lambda$.
    * $\Lambda_{\omega}(\mathbb{p})$ gives us the fraction of households that have persistent income component $\mathbb{p}$ in the state $\omega$ of the economy.
    * Similar to Krusell and Smith (1998) and Krueger et al. (2016), we impose a restriction that the aggregate fraction of each of the persistent income states only depends on the aggregate state of the economy. This implies that for each of the four possible $(\omega, \omega')$ pairs, the following hold:
    $$\Lambda_{\omega'}(\mathbb{p}_1) = \Lambda_{\omega}(\mathbb{p}_1) \frac{\lambda_{\omega \mathbb{p}_1,\omega' \mathbb{p}_1}}{\rho_{\omega,\omega'}} + \Lambda_{\omega}(\mathbb{p}_2) \frac{\lambda_{\omega \mathbb{p}_2,\omega' \mathbb{p}_1}}{\rho_{\omega,\omega'}} + \Big(1- \Lambda_{\omega}(\mathbb{p}_1) - \Lambda_{\omega}(\mathbb{p}_2)\Big) \frac{\lambda_{\omega \mathbb{p}_3,\omega' \mathbb{p}_1}}{\rho_{\omega,\omega'}}$$
    $$\Lambda_{\omega'}(\mathbb{p}_2) = \Lambda_{\omega}(\mathbb{p}_1) \frac{\lambda_{\omega \mathbb{p}_1,\omega' \mathbb{p}_2}}{\rho_{\omega,\omega'}} + \Lambda_{\omega}(\mathbb{p}_2) \frac{\lambda_{\omega \mathbb{p}_2,\omega' \mathbb{p}_2}}{\rho_{\omega,\omega'}} + \Big(1- \Lambda_{\omega}(\mathbb{p}_1) - \Lambda_{\omega}(\mathbb{p}_2)\Big) \frac{\lambda_{\omega \mathbb{p}_3,\omega' \mathbb{p}_2}}{\rho_{\omega,\omega'}}$$
    $$\Lambda_{\omega'}(\mathbb{p}_3) = \Lambda_{\omega}(\mathbb{p}_1) \frac{\lambda_{\omega \mathbb{p}_1,\omega' \mathbb{p}_3}}{\rho_{\omega,\omega'}} + \Lambda_{\omega}(\mathbb{p}_2) \frac{\lambda_{\omega \mathbb{p}_2,\omega' \mathbb{p}_3}}{\rho_{\omega,\omega'}} + \Big(1- \Lambda_{\omega}(\mathbb{p}_1) - \Lambda_{\omega}(\mathbb{p}_2)\Big) \frac{\lambda_{\omega \mathbb{p}_3,\omega' \mathbb{p}_3}}{\rho_{\omega,\omega'}}$$
    and
    $$\lambda_{\omega \mathbb{p}_1,\omega' \mathbb{p}_1} + \lambda_{\omega \mathbb{p}_1,\omega' \mathbb{p}_2} + \lambda_{\omega \mathbb{p}_1,\omega' \mathbb{p}_3} = \rho_{\omega,\omega'}$$
    $$\lambda_{\omega \mathbb{p}_2,\omega' \mathbb{p}_1} + \lambda_{\omega \mathbb{p}_2,\omega' \mathbb{p}_2} + \lambda_{\omega \mathbb{p}_2,\omega' \mathbb{p}_3} = \rho_{\omega,\omega'}$$
    $$\lambda_{\omega \mathbb{p}_3,\omega' \mathbb{p}_1} + \lambda_{\omega \mathbb{p}_3,\omega' \mathbb{p}_2} + \lambda_{\omega \mathbb{p}_3,\omega' \mathbb{p}_3} = \rho_{\omega,\omega'}$$
    * For each $(\omega, \omega')$ pair, these are 6 equations with 9 unknown $\lambda$'s.
    * Thus, conditional on targeted fractions of persistent income components in the good and bad states of the economy, $\Big(\Lambda_{h}(\mathbb{p})$,$\Lambda_{l}(\mathbb{p})\Big)$, these equations place a joint restriction on the transition probabilties $\lambda$ for each $(\omega,\omega')$ pair.
    * Using data if we calibrate 3 of the transition probabilities for each $(\omega,\omega')$ pair, we would pin down the entire transition matrix.
    * **NOTE: This way of calibration will become increasingly difficult if the number of points on $\mathbb{p}$ increase.**


------------------------------------------------------------------------

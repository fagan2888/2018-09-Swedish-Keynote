### Questions

* Currently, I solve the model on 5 different shock points for the *transitory* income shocks and 7 different shock points for the *transitory* house price shocks.
  * Since $m_t$ is one of the state variables, in the simulation part, I draw from a more refined transitory income distribution and interpolate for solutions on these refined grid points.
  * For house prices; however, I have the persistent and transitory component as two separate state variables, and to avoid an extra interpolation in the simulation part I only draw from the grid points for the transitory house price shocks at which I solved the model.
  * **Q1: Is it okay to simulate on the coarse grid for the transitory house price shocks, or will I have to simulate on a more refined transitory house price distribution?**
* **Q2: What should be the time duration of my simulation over which I study the performance of alternative macroprudential rules?**

------------------------------------------------------------------------

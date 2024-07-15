= Notes on Quantum Metrology

The general paradigm of single parameter Quantum Metorlogy is as follows.  
#image("assets/2024-07-04-11-05-13.png")

For a quantum system with parameter $lambda$ of interest, an initial probe is prepared in a state $rho_0$ (density matrix). 

This probe interacts with the quantum system and undergoes an evolution $U_lambda$. The evolution is described as $rho_lambda = U_lambda rho_0 U_lambda^dagger$. We are effectively transcribing the information in the wanted system to the probe.

The probe is then measured by a POVM $E_x$, which can be optimized using a method of which I am not familiar... 

The measurement outcome $x$ is then used to estimate the parameter $lambda$. It can be modeled as a conditional probability $p(x|lambda)$. We use various methods to construct the best estimator, two of which are Beyesian estimation and Maximum Likelihood estimation.






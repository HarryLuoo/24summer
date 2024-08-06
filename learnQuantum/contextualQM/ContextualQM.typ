 #import "@preview/physica:0.9.3": *

#set math.equation(numbering: "(1)")

#set page(margin: (
  top: 2cm,
  bottom: 2cm,
  x: 4cm,
))


= Notes on Contextual Quantum Metrology
== Quantum Fisher information 
eq.5 on page 5 of @Jae_2024 shows
$ 
    ket(psi)_"in"  &= "QWP"_2(pi/4) med "HWP"(p)med "QWP"_1(q) med ket(H) \ 
    & = e^(i(-2p + q + pi/4)) display(mat(cos(pi/4 - q);e^(i(4p-2q-pi/2)) sin(pi/4 -q) ))  
$ and by adjusting $p,q$ s.t. $theta_0 = pi/2 -2q, phi = 4p - 2q - pi/2$, the parameterized state is given as $ 
    ket(psi)_"in" = cos(theta_0/2) ket(H) med + e^(i phi) sin(theta_0/2) ket(V) 
$ 
When passed thorugh the sucrose solution, gaining a phase of $theta = alpha l c$, the state becomes $ 
    ket(psi)_"out" = cos((theta+theta_0)/2) ket(H) med + e^(i phi) sin((theta+theta_0)/2) ket(V)
$

This is a pure state, since $cos^2(theta/2) + sin^2(theta/2) = 1$. For a pure state, its quantum Fisher Information can be found by the following equation @Barbieri_2022. $ 
     F_theta = 4[braket(partial_theta psi) + (braket(partial_theta psi,psi))^2] 
$ 
 
Where, $ 
    ket(partial_theta psi) = -1/2 sin ((theta+theta_0)/2) ket(H) med + 1/2 e^(i phi)  cos((theta+theta_0)/2) ket(V)
$ 
$ 
    bra(partial_theta psi) =  -1/2 sin((theta+theta_0)/2) bra(H) + 1/2 e^(-i phi) cos((theta+theta_0)/2) bra(V) 
$ 

$ 
   => braket(partial_theta psi)= (1/4 sin^2((theta+theta_0)/2)) + (1/4 cos^2((theta+theta_0)/2)) = 1/4
$ <eq.7>
$ 
     (braket(partial_theta psi, psi))^2 &= 1/4 sin^2((theta+theta_0)/2) cos^2((theta+theta_0)/2) +1/4 sin^2((theta+theta_0)/2) cos^2((theta+theta_0)/2) \ & - 1/2 sin^2((theta+theta_0)/2) cos^2((theta+theta_0)/2) \ &= 0
$ <eq.8>

collecting @eq.7, @eq.8,  $ #rect(inset: 8pt)[
$display( F_Q = 4 dot (1/4+0) = 1 )$
]
 $

#line(length: 100%)
== Contextual Quantum Fisher Information via quasiprobability
=== Necessary Ingredients from Measurement Theroy
- Born's Rule
  For quantum state $ket(psi)$ with eigenstates $ket(H), ket(V)$:
  $ 
      P(H) = abs(braket(H,psi))^2 
  $ 
    
- Projection Measurements
  The experiment involves tro types of measurements:
  - A: H/V measurement, with $Pi_H = ketbra(H), Pi_$ 
  








#bibliography("ref.bib")
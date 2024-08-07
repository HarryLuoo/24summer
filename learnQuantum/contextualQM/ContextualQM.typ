 #import "@preview/physica:0.9.3": *

#set math.equation(numbering: "(1)")

#set page(margin: (
  top: 2cm,
  bottom: 2cm,
  x: 4cm,
))


 = Notes on Contextual Quantum Metrology
 #set heading(numbering: "1.1")
= Quantum Fisher information 
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
= Contextual Quantum Fisher Information via quasiprobability
== Necessary Ingredients 
=== Born's Rule
  For quantum state $ket(psi)$ with eigenstates $ket(H), ket(V)$:
  $ 
      P(H) = abs(braket(H,psi))^2 
  $ <eq.born>
    
=== Projective Measurements
  The experiment involves two types of measurements:
  - A: measurement in  H / V basis , with $Pi_H = ketbra(H), Pi_V = ketbra(V)$
  - B: measurement in D / A basis, with  $Pi_D = ketbra(D), Pi_A = ketbra(A)$, where $ 
       ket(D) = 1/sqrt(2) (ket(H) + ket(V)), ket(A) = 1/sqrt(2) (ket(H) - ket(V))
  $ 
    Consider a state in H / V basis $ket(psi) = alpha ket(H) + beta ket(V)$, it can be expressed in D / A basis as $ 
        ket(psi) = 1/2sqrt(2) (alpha + beta) ket(D) + 1/sqrt(2) ( alpha - beta) ket(A)  
    $<eq.da>
  

=== Operational Quasiprobability 

$ 
    w(a,b|theta) = p(a,b|A,B,theta) + 1/2 p(b|B,theta) - p(b|A,B, theta) 
$ <eq.quasi>
- In the sucrose measurement experiment, $(a,b)$ can take $(H,D)$, $(H,A)$,$(V,D)$, $(V,A)$  

=== Joint probability $p(a,b|A,B,theta)$ 
 
 Let $a$ and $b$ represent the specific measurement outcomes corresponding to the projection operators $Pi_A = ket(A)  bra(A)$ and $Pi_B = ket(B)bra(B)$. 
 
 The joint probability $p(a,b|A,B,theta)$ can be interpreted as the probability of sequentially measuring $ ket(A)$ and then $  ket(B)$ when performing the measurements associated with $Pi_A$ followed by $Pi_B$.

According to the postulate of quantum measurement, this cascaded measurement can be represented as a single measurement with the combined operator $Pi_{B A} = Pi_B Pi_A$. Thus, the joint probability can be written as:
$ p(a,b|A,B,theta) &=   bra(psi(theta)) Pi_{B A}^dagger Pi_{B A}   ket(psi(theta)) \ &=   bra(psi(theta)) (Pi_B Pi_A)^dagger (Pi_B Pi_A)   ket(psi(theta)) \ &=   bra(psi(theta)) Pi_A^dagger Pi_B^dagger Pi_B Pi_A   ket(psi(theta)) $

Since $Pi_A$ and $Pi_B$ are Hermitian ($Pi_A^dagger = Pi_A$ and $Pi_B^dagger = Pi_B$) and idempotent ($Pi_A^2 = Pi_A$ and $Pi_B^2 = Pi_B$), this simplifies to:
$ p(a,b|A,B,theta) =   bra(psi(theta)) Pi_A Pi_B Pi_A   ket(psi(theta)) $

Noticing $Pi_A = ketbra(A), Pi_B = ketbra(B)$, we can simplify this further to:$ 
    p(a,b|A,B,theta) &= bra(psi) ket(A)bra(A)ket(B)bra(B)ket(A) bra(A) ket(psi) \ 
    & = abs(braket(A,psi))^2 med abs(braket(B,A))^2
$ 
 

=== Contexual Fisher information
  $ 
      F_"co" = sum_(a,b) w(a,b|theta) med [partial_theta ln w(a,b|theta)]^2   
  $ <eq.co>


#bibliography("ref.bib")
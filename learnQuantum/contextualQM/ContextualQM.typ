 #import "@preview/physica:0.9.3": *

#set math.equation(numbering: "{1}")

#set page(margin: (
  top: 1cm,
  bottom: 1cm,
  x: 4cm,
))


 = Notes on Contextual Quantum Metrology
 #set heading(numbering: "1.1")
 #line(length: 100%)
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
#pagebreak()
#line(length: 100%)
= Contextual Quantum Fisher Information via quasiprobability
== Necessary Ingredients 
=== Born's Rule
  For quantum state $ket(psi)$ with eigenstates $ket(H), ket(V)$ etc. , the probability of the meauserment outcome falls on eigensate $ket(H)$is  :
  $ 
      P(H) = abs(braket(H,psi))^2 .
  $ <eq.born>
    
=== Projective Measurements
  The experiment involves two types of measurements:
  - $cal(A)$: measurement in  $H , V$  basis , with $Pi_H = ketbra(H), Pi_V = ketbra(V)$
  - $cal(B)$ : measurement in $D,A$  basis, with  $Pi_D = ketbra(D), Pi_A = ketbra(A)$, where $ 
       ket(D) = 1/sqrt(2) (ket(H) + ket(V));quad  ket(A) = 1/sqrt(2) (ket(H) - ket(V)).
  $ 
    Consider a state in H / V basis $ket(psi) = alpha ket(H) + beta ket(V)$, it can be expressed in D / A basis as $ 
        ket(psi) = 1/2sqrt(2) (alpha + beta) ket(D) + 1/sqrt(2) ( alpha - beta) ket(A)  .
    $<eq.da>
  

=== Operational Quasiprobability 

$ 
    w(a,b|theta) = p(a,b|cal(A),cal(B),theta) + 1/2(med p(b|cal(B),theta) - p(b|cal(A),cal(B), theta) med)
    $ <eq.quasi>
- In the sucrose measurement experiment, $a in {H,V}, med b in {D,A}$, and $theta$ is the phase shift due to the sucrose solution. 


=== Contexual Fisher information
  $ 
      F_"co" = sum_(a,b) w(a,b|theta) med [partial_theta ln w(a,b|theta)]^2   
  $ <eq.co>

== Calculating Operational QUasiprobability
There are three major terms in @eq.quasi, so we will calculate them seperatedly as follows.
=== Joint probability $p(a,b|cal(A),cal(B),theta)$ 
 
 Let $a$ and $b$ represent the specific measurement outcomes corresponding to the projection operators $Pi_cal(A) = ket(A)  bra(A)$ and $Pi_cal(B) = ket(B)bra(B)$. i.e. $a = ket(A), b = ket(B)$.  
 
 The joint probability $p(a,b|cal(A),cal(B),theta)$ can be interpreted as the probability of sequentially measuring $ ket(A)$ and then $  ket(B)$ when performing the measurements associated with $Pi_cal(A)$ followed by $Pi_cal(B)$.

According to the postulate of quantum measurement, this cascaded measurement can be represented as a single measurement with the combined operator $Pi_{cal(B A)} = Pi_cal(B) Pi_cal(A)$. Thus, the joint probability can be written as:
$ p(a,b|cal(A),cal(B),theta) &=   bra(psi(theta)) Pi_{cal(B A)}^dagger Pi_{cal(B A)}   ket(psi(theta)) \ &=   bra(psi(theta)) (Pi_cal(B) Pi_cal(A))^dagger (Pi_cal(B) Pi_cal(A))   ket(psi(theta)) \ &=   bra(psi(theta)) Pi_cal(A)^dagger Pi_cal(B)^dagger Pi_cal(B) Pi_cal(A)   ket(psi(theta)) $

Since $Pi_cal(A)$ and $Pi_cal(B)$ are Hermitian ($Pi_cal(A)^dagger = Pi_cal(A)$ and $Pi_cal(B)^dagger = Pi_cal(B)$) and idempotent ($Pi_cal(A)^2 = Pi_cal(A)$ and $Pi_cal(B)^2 = Pi_cal(B)$), this simplifies to:
$ p(a,b|cal(A),cal(B),theta) =   bra(psi(theta)) Pi_cal(A) Pi_cal(B) Pi_cal(A)   ket(psi(theta)) $

Noticing $Pi_cal(A) = ketbra(A), Pi_cal(B) = ketbra(B)$, we can simplify this further to:$ 
    p(a,b|cal(A),cal(B),theta) &= bra(psi) ket(A)bra(A)ket(B)bra(B)ket(A) bra(A) ket(psi) \ 
&#rect(inset: 8pt)[
$ display(     = abs(braket(A,psi))^2 med abs(braket(B,A))^2)$
]

$ <eq.joint>
 
Using @eq.joint, we can calculate $p(a,b| cal(A), cal(B), theta)$ for $a in {H,V}$ and $b in {D,A}$. 

 - $ 
    p(H,D | cal(A), cal(B), theta) &= abs(braket(H,psi))^2 abs(braket(D,H))^2 \ 
    & = abs(display(mat(1,0)) dot display(mat(cos((theta+theta_0)/2); e^(i phi)sin((theta+theta_0)/2) ) ))^2 med 
    abs(display(mat(1/(sqrt(2)), 1/sqrt(2)  )) dot display(mat(1;0)))^2  \ 
    & = 1/2 cos^2((theta+theta_0)/2) \ 
    & = 1/4(1+cos(theta+theta_0))
$ <eq.phd>
- Similarly, $ 
    p(H,A|cal(A),cal(B),theta) &= abs(braket(H,psi))^2 abs(braket(A,H))^2 \ 
    & =1/2 cos^2((theta+theta_0)/2) \ 
    & = 1/4(1+cos(theta+theta_0))
$ <eq.pha>

- $ 
    p(V,D|cal(A),cal(B),theta) &= abs(braket(V,psi))^2 abs(braket(D,V))^2 \ 
    & = 1/4(1-cos(theta+theta_0))
$ <eq.pvd>

- $ 
    p(V,A|cal(A),cal(B),theta) &= abs(braket(V,psi))^2 abs(braket(A,V))^2 \ 
    & = 1/4(1-cos(theta+theta_0))
$ <eq.pva>


=== Conditional probability $p(b| cal(B),theta)$ 
$p(b|cal(B), theta)$ represents the probability of measuring outcome $b$ when measurement $cal(B)$ is performed. This can be found using the Born's rule (@eq.born). i.e. $ 
    p(b| cal(B), theta) = abs(braket(B,psi))^2 
$ 
We calculate $p(b|cal(B), theta)$ for $b in {D,A}$ as follows:
- $ 
    p(D|cal(B), theta) &= abs(braket(D,psi))^2 \ 
    & = abs( display(mat(1/sqrt(2) , 1/sqrt(2 ) )) dot display(mat( cos((theta+theta_0)/2); e^(i phi) sin((theta+theta_0)/2)))  )^2 \ 
    & = abs(1/sqrt(2) cos ((theta+theta_0)/2) + 1/sqrt(2) e^(i phi) sin((theta+theta_0)/2) )^2 \ 
    & = (1/sqrt(2) cos ((theta+theta_0)/2)+ 1/sqrt(2) cos phi sin((theta+theta_0)/2))^2 \ & quad +(1/sqrt(2) sin phi sin((theta+theta_0)/2))^2 \ 
    & = 1/2 + cos phi cos ((theta+theta_0)/2) sin ((theta+theta_0)/2) \ 
&#rect(inset: 8pt)[
$ display(    & = 1/2(1 + sin (theta+theta_0) cos phi))$
]

$ 
 
- $ 
    p(A| cal(B), theta) &= abs(braket(A, psi))^2 \ 
    & = abs( display(mat(1/sqrt(2) , -1/sqrt(2 ) )) dot display(mat( cos((theta+theta_0)/2); e^(i phi) sin((theta+theta_0)/2)))  )^2 \ 
    & = abs(1/sqrt(2) cos ((theta+theta_0)/2) - 1/sqrt(2) e^(i phi) sin((theta+theta_0)/2) )^2 \ 
    & = (1/sqrt(2) cos((theta+theta_0)/2) - 1/sqrt(2) cos phi sin((theta+theta_0)/2))^2 \ & quad +(-1/sqrt(2) sin phi sin((theta+theta_0)/2))^2 \ 
    & = 1/2 - cos phi cos ((theta+theta_0)/2) sin ((theta+theta_0)/2) \ 
&#rect(inset: 8pt)[
$  display(  = 1/2(1 - sin (theta+theta_0) cos phi))$
]

$ 

=== Marginal probability $p(b|cal(A),cal(B),theta)$
By definition, $p(b|cal(A),cal(B),theta) = sum_a p(a,b|cal(A),cal(B),theta)$. Using results from @eq.phd to @eq.pva, we can calculate $p(b|cal(A),cal(B),theta)$ for $b in {D,A}$ as follows:

- $ 
 p(D| cal(A), cal(B), theta) 
 & = p(H, D | cal(A), cal(B), theta) + p(V, D | cal(A), cal(B), theta) \ 
 & = 1/4(1+cos(theta+theta_0)) + 1/4(1-cos(theta+theta_0)) \ 
 & = 1/2
$ 

- $ 
     p(A| cal(A), cal(B), theta) &= p(H, A | cal(A), cal(B), theta) + p(V, A | cal(A), cal(B), theta) \ 
     & = 1/4(1+cos(theta+theta_0)) + 1/4(1-cos(theta+theta_0)) \
      & = 1/2
$ 


=== Quasiprobability for $a in {H,V}, b in {D, A}$ 
Collecting the above, 
- $ 
    w(H,D | theta) &= p(H,D| cal(A), cal(B), theta) + 1/2 [p(D| cal(B), theta) - p( D| cal(A), cal(B), theta)] \ 
    & = 1/4(1+cos(theta+theta_0)) + 1/2(1/2(1 + sin(theta+theta_0) cos phi) - 1/2) \ 
    & = 1/4(1+cos(theta+theta_0) + sin(theta+theta_0) cos phi )\
$ 
- $ 
    w(H,A| theta) &= p(H,A| cal(A), cal(B), theta) + 1/2 [p(A| cal(B), theta) - p( A| cal(A), cal(B), theta)] \ 
    & = 1/4 ( 1 + cos (theta + theta_0) - sin(theta+ theta_0) cos phi)
$ 

- $ 
    w(V,D| theta) &= p(V,D| cal(A), cal(B), theta) + 1/2 [p(D| cal(B), theta) - p( D| cal(A), cal(B), theta)] \ 
    & = 1/4(1 - cos (theta + theta_0) + sin(theta+ theta_0) cos phi)
$ 

- $ 
    w(V,A| theta) &= p(V,A| cal(A), cal(B), theta) + 1/2 [p(A| cal(B), theta) - p( A| cal(A), cal(B), theta)] \ 
    & = 1/4( 1- cos (theta + theta_0) - sin(theta+theta_0) cos phi))
$ 

This set of results agrees with: $ w(a,b|theta)=(1+(-1)^(a)cos theta+(-1)^(b)sin theta cos phi)slash 4, $ as claimed in @Jae_2024. 


== Contextual Fisher Information (coFI)
coFI is given in @Jae_2024 as$ 
    F_"co" = sum_(a,b) w(a,b|theta) med [partial_theta ln w(a,b|theta)]^2   
$ 

Using the results from above, we can expand it as follows:
 

#bibliography("ref.bib")
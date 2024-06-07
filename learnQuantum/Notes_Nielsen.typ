#import "@preview/physica:0.9.3": *

#set math.equation(numbering: "(1)")

#set page(margin: (
  top: 2cm,
  bottom: 2cm,
  x: 4cm,
))

#set heading(numbering: (a, ..nums) => {
  let level = nums.pos().len()
  let pattern = if level == 1 {
    "1"
  } else if level == 2 {
    "1.1)"
  }
  if pattern != none {
    numbering(pattern, ..nums)
  }
})




= Notes on Quantum computation and quantum information by Nielsen and Chuang
= Chapter 2: Linear algebra

== vector space
- $C^(n) $: space of all n-tuple complex numbers (c numbers)
i.e. $(z_1,z_2,z_3,...,z_n)$
 
- a vector space is closed under scalar multiplicationa nd addition

=== Dirac notation
#table(
  columns: 2,
  [*Symbols*], [*Meaning*],
  $ket(v)$, [ket, a vector in vec space],
  $bra(v)$, [bra, a dual vector in vec space; the complex transpose of ket $bra(v) = (ket(v)^*)^top$ ],
  $braket(v,w)$, [inner product of $ket(v)$ and $ket(w)$] ,
  $ket(phi) times.circle ket(psi) $, [tensor product of $ket(phi)$ and $ket(psi)$ \ abbriviates as $ ket(phi) ket(psi)$ ],
  $ bold(A)^*$,[complex conjugate of $ bold(A)$ ] ,
  $ bold(A)^top$, [transpose of $ bold(A)$] ,
  $ bold(A)^dagger$, [hermitian conjugate of $ bold(A)$\ 
              i.e. $ bold(A)^dagger = (bold(A)^*)^top$ \
              $ display(mat(a,b;c,d)^dagger) = display(mat(a^*, c^(*);b^*, d^* )) $ ] ,
  $bra(phi)  bold(A) ket(psi)$, [inner product betweeen $ket(phi)$ and $ bold(A) ket(psi)$  ] 

)

=== Span  
   a set of bec $ket(v_1), ket(v_2), dots ,  ket(v_n)$ spans the vector space if any vector in the space can be written as $ 
    ket(v) = sum_i a_i ket(v_i) $ for some complex numbers $a_i$ 
=== Linear Independence
a set of non-zero vectors $ket(v_1), ket(v_2), dots, ket(v_n)$ are liinearly dependent if there exists a set of complex numbers $a_1,a_2, dots, a_n$, s.t. $ 
      a_1 ket(v_1) + a_2 ket(v_2) + dots + a_n ket(v_n) = 0  
  $ 
    
  If the only solution to the above equation is $a_1 = a_2 = dots = a_n = 0$, then the vectors are *linearly independent*
  
 === Linear operators
  A linear operator $A$ is any linear function that $ 
     A(sum_i a_i ket(v_i)) = sum_i a_i A(ket(v_i)) 
 $ 
It is convention to write $A (ket(v_i)) = A ket(v_i)$ 
- Identity Operator $I_V$ : $I_V ket(v) eq.triple ket(v)$. It is convinent to write $I$ if no confution arises.
- zero operator $0 ket(v) eq.triple 0$   
- composition of linear operators $A$ and $B$ is $A B$

We observe that the above is equivalent to the matrix representation of linear transformations.

In other words, for a linear operator $A: V -> W$, and suppose $ket(v_1), ket(v_2), dots, ket(v_m)    $ $   
     
$ 


=== Hilbert Space
Given a vector basis ${ket(E_i)}$ , when attempting to represent a polynomial as $p = sum_(i = 0)^infinity a_i E_i$, the sum is in the form of, according to taylor series, an exponential function. But the exponential function is not a polynomial, i.e. outside of our vector space, so we have landed on a paradox. To avoid this, we define a *Hilbert* *Space* to handle infinite dimensional vector spaces.

- A Hilbert spsace is a vector space that is 1. complete and 2. has an inner product defined on it. In other words, every converging set of vectors must converge to an element *inside* the vector space.

$ 
    ket(psi) in cal(H) 
$ 

#line(length: 100%)
== Inner product
- Review on dot product
   - orthogonality & angle
   - norm $norm(arrow(v)) = sqrt(arrow(v) dot arrow(v)) $

For kets $ket(psi), ket(phi), ket(zeta)$, and scalar $a$, an inner product has the following rules:

- Linearity in the second argument:
  $ 
      cases( braket(psi,phi + zeta) = braket(psi, phi) + braket(psi, zeta) \
             braket(psi, a phi) = a braket(psi, phi) 
      )
  $ 
- COmplex commutation:
    $ 
        braket(psi, phi) = braket(phi, psi)^*
    $
- Positive definiteness (think of norm):
  $ 
      ket(psi) eq.not 0 => braket(psi) >0 
  $ 
  
  
- Magnitude of a vector:
  $ 
        norm(ket(psi)) = sqrt(braket(psi, psi)) 
  $ 
- Orthogonality:
    $ 
        braket(psi, phi) = 0 => ket(psi) "and" ket(phi) "are orthogonal" 
    $
- antilinearity in the first argument:
    $ 
        braket(a psi + b zeta, phi) = a^* braket(psi, phi) + b^* braket(zeta, phi)
    $
#line(length: 100%)
== Orthonormal basis

$ {ket(E_i)}$ s.t. $braket(E_i,E_j) = delta_(i j) $ is an orthonormal basis,
with kroneker delta $delta_(i j) = cases(1 quad i = j, 0 quad i eq.not j)$ 

In English, the inner product of two vectors is 1 if they are the same (norm = 1), and 0 if they are different (orthogonal).

Using the orthonormal basis, we can write any vector as a linear combination of the basis vectors:
$ 
    ket(psi) = sum_i c_i ket(E_i)
$ 

Notice that $ 
    braket(E_i,psi) &= braket(E_i, sum_j c_j E_j) \
                    &= sum_j c_j braket(E_i, E_j) \
                    &= c_i
$ 
And we use the above to calculate the coefficients $c_i$.

=== Inner product between two vectors 
$ 
    braket(psi, phi) &= braket(sum_i c_i E_i, sum_j d_j E_j) \
                     &= sum_i sum_j c_i^* d_j braket(E_i, E_j) \
                     &= sum_(i) sum_(j) c_i^* d_j delta_(i j) \
                     &= sum_i c_i^* d_i 
$ 
When $c,d in bb(N)$, $braket(phi,psi) = sum_(i) c_i d_i  $  is simply the dot product.

== Continuous basis
In a Hilbert space, we can represent continuous functions as a linear combination of a set of continous basis ${ket(x)| x in R}$. The mathematicians said so and we do not question the validity of this argument on our own.

 An example would be $ 
    ket(psi) =  integral  dif x med c(x) med ket(x)
$ 
Where $c(x)$ is a function that maps $x$ to the coefficient $c(x)$. 
=== representatio of continuous orthonormal basis
Similar to the discrete case, we can represent the continuous orthonormal basis ${ket(x)| x in bb(R)}$ as: 
$ 
braket(x_i,x_j) =  delta(x_i - x_j) 
$ where $delta(x_i - x_j)$ is the Dirac delta function. We can be pragmatic and understand the Dirac Delta function as ANY function that satisfies the following properties:
$ 
    integral  dif x med f(x) delta(c-x) = f(c) \
    delta(c - x) = cases(1 quad x = c, 0 quad x eq.not c)
$ 
 
=== Inner product between two continuous vectors
$ 
    braket(psi,phi) &= ( integral psi(x) bra(x) dif  x) ( integral phi(y) ket(y) dif y) \
                   &= integral.double  dif  psi^*(x) phi(y)  dif x dif y  med braket(x,y) \ 
                   & = integral dif x psi^*(x)   med underbrace(integral dif y phi(y) delta(x-y), delta "property") \ 
                   & = integral dif x psi^*(x) med phi(x)             
$ 
We have done a inner product of wavefunctions.

=== Finding coefficients of continuous basis
notice $ 
    braket(x_(0), psi) &= bra(x_0)(integral dif x psi(x) ket(x)) \ 
    & = integral dif x psi(x)    braket(x_0,x) \ 
    & = integral  dif x psi (x) med delta(x_0 - x) \ 
    & = psi(x_0) 
$ 
So, the coefficient function $psi(x_0) = braket(x_0,psi)$ 


#line(length: 100%)
== Bra and Braket notation
=== Linear functionals
A linear functional is a linear function that maps a vector to a scalar: $ 
    L arrow(v) = c, quad c in bb(F) 
$ 
 $L$ maps from the vector space to the field of scalars, or $L: bb(C)^n -> bb(F)$

 $L$ is actually an $1 times n$ matrix, or a row vector. 

  === Dual Space $ bold(V)^*$

Set of all $L$, where each $L$ is a linear funcitonal s.t. $L  bold(V) = c in bb(F)$. More rigorously we can say $ 
     bold(V)^* = {L:  bold(V) -> F | L "is linear"} 
$ 
   
=== Bra
- $bra(psi)$ is a shorthand of a linear functional inside a Hilbert dual space. It is an operator that when acting on a vector, will spit out a constant. $ 
    bra(psi) med ket(phi) = c in bb(C)
$ 
==== Riesz Representation theorem 
For any linear functional $L_phi$ s.t. $ 
    L_phi arrow(v) = "InProd"(arrow(phi), arrow(v)) 
$ where $arrow(phi)$ is a unique vector. In hilbert space,  this unique vector is $bra(phi)$ 
   
 So it follows that $ 
     bra(phi) ket(psi) = braket(phi,psi) 
 $ 

=== Complex conjegate
Recall the fact that $ 
    braket(phi,psi) = sum_(i) c_i^* d_i   = bra(phi) ket(psi)
$ 
where $ket(phi) = sum_(i) c_i ket(E_i).  $ 
By virtue of intuition, we can see that $ 
    bra(phi) = (ket(phi)^*)^top
$ 
=== Outer product: a peek 

notice $ 
    ket(psi) = sum_(i) c_i ket(A_i) &= sum_(i)  braket(A_i,psi) med ket(A_i)  \ 
    & = sum_(i) ket(A_i) braket(A_i,psi) \ 
    & = sum_(i) ket(A_i) bra(A_i) ket(psi) \ 
    & = (sum_(i) ket(A_i) bra(A_i)) ket(psi)
$ 

Comparing left with right, we observe that $ 
    sum_(i) ket(A_i) bra(A_i) =  hat(bold(I))   
$ 

#line(length: 100%)

== Observables
We represent physical quantities or states as an linear operator. The genrealization of any physical state is an observable.

=== Linear operator
An Linear operator is a map on a vector space that preserves its original structure. i.e.,$ 
    cases( hat(bold(M))(ket(psi) + ket(phi)) =  hat(bold(M)) ket(psi) + hat(bold(M)) ket(phi) , 
          hat(bold(M))(a ket(psi)) = a hat(bold(M)) ket(psi) 
    )
$ 
=== Definite stsates
Special states in which observables has one definite value. These states are eigenstates of the observable. They corresponds to eigenvalues, all possible values of the observable. 

Therefore, we can represent physical states as linear combinations of the outcome eigenstates. It is intuitive to propose the following constrains:

1. Observables have real eigenvalues
2. Eigenstates span the entire vector space.
3. eigenstates are mutually orthogonal.

Thus, Eigenstates are just the basis of an observable state in disguise!
$ 
    ket(psi) = sum_(i) c_i ket(E_i)   
$ 


#line(length: 100%)
== Probablistic Determination of observables: Born's rule

Knowing $ket(psi) = sum_(i) c_i ket(E_i)  $, what is probability of $ket(psi)$ exactly measured to be $ket(E_i)$, i.e. $P(ket(psi) = E_i)$

Observe a relationship between coefficient $c_i$ to the probability of falling into the eigenstate $ket(E_i)$, we propose the following: $ 
     P(E = E_i) = f(c_i)
$ with intuitive constrains:
$ 
     1. quad P_"total" = sum_(i) f(c_i) = 1 \
     2. quad abs(ket(psi)^2) = sum_(i)^(n) c_i^2 = k^2 "constant length of eigenstates decomposition"
$ 

from 2: $

c_1^2 + c_2^2 + dots + c_n^2 = k^2  \
c_n = plus.minus sqrt(k^2 - a^2 -b^2 - dots  ) = plus.minus A  
$ 

Obviously, linear combination is invariant under positiveness, so $ 
    f(c) = f(-c) 
$ 
Recall property one: 
$ 
    sum_(i)^(n) f(c_i) &= 1 $ 
         
    $ 
    
     sum_(i)^(n-1) f(c_i) +  f_(c_n) &= 1 \ 
    sum_(i)^(n-1) (dif f(c_i))/(dif c_1) + (dif f(c_n))/(dif c_1)    & = 0 quad && (*)\ 
    (dif )/(dif c_1) f(c_1) - f'(sqrt(k^2 - c_1^2 - c_2^2 - dots) ) dot (c_1)/(sqrt(k^2 - c_1^2 dots ) ) & = 0 \ 
    1/c_1 (dif )/(dif c_1) f(c_1)  & = (f'(sqrt(k^2 - c_1^2 - c_2^2 - dots) ))/(sqrt(k^2 - c_1^2 - c_2^2 - dots) )  && (**)
$ 

Notice that if we take $ (dif )/(dif c_2)$ on both sides at $(*) $ instead, $(**)$ becomes $ 
     1/c_2 (dif )/(dif c_2) f(c_2)  & = (f'(sqrt(k^2 - c_1^2 - c_2^2 - dots) ))/(sqrt(k^2 - c_1^2 - c_2^2 - dots) )  
$ 
Thus $ 
      1/c_1 (dif )/(dif c_1) f(c_1) &=  1/c_2 (dif )/(dif c_2) f(c_2) \ 
      (dif )/(dif c_1)( 1/c_1 (dif )/(dif c_1) f(c_1)) & = (dif )/(dif c_1) underbrace(( 1/c_2 (dif )/(dif c_2) f(c_2) ) , "idpt of" c_1) = 0 
$ 
Integrating the first term as our apporach to this ODE:
$ 
    f(c_1) =  lambda/2 c_1^2 + mu 
$ 
It is obvious that we can generalize the above to any $c_i$,
$ 
    f(c) = lambda/2 c^2 + mu
$ 
We meditate on an initial condition: $ 
    f(0) = P(ket(psi) = 0 ket(E_i)) = 0
    $ This is obvious as the probability of not being in any eigenstate is 0. And we can see that $f(0) = mu = 0$ 

Now recall the first constrain:
$ 
    sum_(i) f(c_i ) = 1   
$ We exploit this constrain using the following special case to find $lambda$

$ 
    f(k) + f(0) + f(0) + f(0) + dots = 1 \
    f(k) = 1 = lambda/2 k^2 \
    => lambda = 2/k^2 
$ 

Collecting the above, $ 
    f(c) = c^2/k^2
$ We have the freedom to choose $k=1$ 

Thus, we have the Born's Rule:$ 
#rect(inset: 8pt)[
$ display(   p(E = E_i)=  f(c_i)= abs(c_i)^2 = abs(braket(E_i,psi))^2)$
]

$ 

When applied to a continuous basis, we have the probability density funciton $ 
     ket(psi) = integral dif x psi(x) ket(x) \
     => p(x) = abs(psi(x))^2
$ 

#line(length: 100%)


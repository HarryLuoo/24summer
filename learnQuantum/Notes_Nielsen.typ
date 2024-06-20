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

== Hermitian Operator
- New notation: for a linear operator $hat(M)$ and vector $ket(phi)$, we write $ 
    hat(M)ket(phi) = ket(hat(M)phi) \
    bra(psi) hat(M) ket(phi) = braket(psi,hat(M)phi)
$ 
=== Hermitian adjoint

We define the hermitian adjoint of an operator $hat(M)$ as $hat(M)^dagger$, s.t.: $ 
    braket(hat(M)^dagger psi, phi) = braket(psi,hat(M)phi) 
$ 

The hermitian adjoint yields the following properties: $ 
   1. (hat(M)^dagger)^dagger = hat(M) \
   2. (a hat(M) + b hat(N))^dagger = a^* hat(M)^dagger + b^* hat(N)^dagger \
   3. (hat(M) hat(N))^dagger = hat(N)^dagger hat(M)^dagger \
$ 

=== Hermitian adjoint of a scalar
for a scalar c $in bb(C)$ , $ 
    braket(psi,c phi) &= c braket(psi,phi) = braket(c^* psi,phi)\
    &=braket(c^dagger psi, phi)\
    => c^dagger = c^*
$ the hermitian adjoint for a scalar $c$ is its complex conjugate.

=== Hermitian adjoint of a ket
for kets $ket(psi), ket(phi)$, $ 
     braket(phi,psi)^dagger = braket(phi,psi)^* =^("comjugate symm.") braket(psi,phi) \
     braket(phi,psi)^dagger = (bra(phi) med ket(psi))^dagger 
$ 
We observe that $ 
    bra(psi) med ket(phi) = ket(psi)^dagger med bra(phi)^dagger  
$ We skip the proof, but it is true that $ 
    ket(psi)^dagger  &= bra(psi) = (ket(psi)^*)^top "complex transpose"\
    bra(phi)^dagger  &= ket(phi)
$ 

== Hermitian adjoint of observables
- recap on observables $hat(E)$ 
  - eigenstates $ket(E_i)$, measured values $E_i$
  - rules:  $ 
      E_i in bb(R) \
      "span"(ket(E_i)) = bold(V) \
        braket(E_i,E_j) = delta_(i j)
  $ 

- Hermitian Operator: defined as any linear operator $hat(M)$ s.t. $hat(M)^dagger  = hat(M)$ 

We show below why any observable $hat(E)$ is hermitian.

Consider an observable acting on a ket, $
hat(E) ket(psi) &= hat(E) sum_(i) c_i ket(E_i) \ 
& = sum_(i) c_i hat(E) ket(E_i) \
& = sum_(i) c_i E_i ket(E_i)  quad "(notice it's just"  bold(A) arrow(x) = lambda arrow(x) ) \ 
& = sum_(i) braket(E_i,psi) E_i ket(E_i) \ 
& = sum_(i) E_i ket(E_i) bra(E_i) ket(psi) \

=> hat(E) ket(psi) = (sum_(i) E_i ket(E_i) bra(E_i)) ket(psi) \
#rect(inset: 8pt)[
$ display(hat(E) = sum_(i) E_i ket(E_i) bra(E_i))$
]

$ 
Similarly, for a continuous basis, an observable $arrow(x) = integral  dif x med x med ket(x) med bra(x) $ 

Now, let's find the hermitian adjoint of an observable $ 
    hat(E)^dagger  &= (sum_(i) E_i ket(E_i) bra(E_i))^dagger \ 
    & = sum_(i) (E_i ket(E_i) bra(E_i))^dagger \ 
    & = sum_(i) (ket(E_i) bra(E_i))^dagger  E_i^dagger \ 
    & = sum_(i) bra(E_i)^dagger  ket(E_i)^dagger  E_i^dagger \
    & = sum_(i) bra(E_i)^dagger  ket(E_i)^dagger  E_i^* \ 
    & = sum_(i) E_i ket(E_i) bra(E_i)quad ("noticing" E_i^* = E_i, "since" E_i in bb(R))   \ 
    & = hat(E)
$ 
$ 
#rect(inset: 8pt)[
$ display(     hat(E)^dagger  = hat(E) )$
]
$
We have proved that the observable $hat(E)$ is an hermitian operator. $qed$   


== Commutator
- Two operators $hat(A), hat(B)$  commute iff they satisfy : $hat(A) hat(B) = hat(B) hat(A)$
- Commutator: defined as $[hat(A), hat(B)] = hat(A) hat(B) -  hat(B) hat(A)$

    If $hat(A) , hat(B)$ are commute, then ${hat(A), hat(B)} = 0$

#rect(inset: 8pt)[
*Claim: Any two commutative linear operator share a simutanuous eigenbasis*
]
Proof:

Given commutative linear operators $hat(A) , hat(B)$, and $[hat(A), hat(B)] = 0$. We are to show that $hat(A)$ and $hat(B)$ share same eigenbasis.

_Linear algebra quick fact: _
    
   _ Degeneracy refers to the multiplicities of eigenvalues. If a liear operator has an eigenvalue that cooresponds to $N$ eigenvectors, we say that it is a degenerate eigenvalue with a geometric multiplicity of $N$. These $N$ eigenvectors $ket(phi_i)$  form an *eigenspace*  ${ket(psi)_i}_(i = 1) ^ N$ 
   A linear operator either has *degenerate eigenvalues* or not. _ 

- Let's consider when $hat(A)$ does not have degenerate eigenvalues, i.e. each eigenvalue of $hat(A)$ corresponds to unique eigenvectors of $hat(A)$. $ 
    hat(A) ket(psi_i) = lambda_i ket(psi_i) quad "for each" i 
$ 
    Consider $hat(B)$ acting on $ket(psi_i)$:$ 
    hat(A) underline(hat(B) ket(psi_i)) = hat(B) hat(A) ket(psi_i) = lambda_i hat(B) underline(ket(psi_i) )
    $ Notice that $hat(B) ket(psi_i)$ is still an eigenvector of $hat(A)$ with eigenvalue $lambda_i$. Since we assumed that $lambda_i$ only corresponds to one eigenvector $ket(psi_i)$, $hat(B)ket(psi_i)$can only be the scalar multiple of $ket(psi_i)$, i.e. $ 
    hat(B)ket(psi_i) = mu_i ket(psi_i) 
    $ <eq.bevec>
    Notice that @eq.bevec tells us that  $ket(psi_i)$ is also the eigenvector of $hat(B)$, with new eigenvalue $mu_i$.

    We have thus shown that for any eigenvector of $hat(A)$, it is also the eigenvector of $hat(B)$. Putting on our mathematician hats, we say: ${ket(psi_i)}_(i = 1)^ N$ also span the eigenspace of $hat(B)$ with eigenvalues $mu_i$   
       
- Now consider when $hat(A)$ has degenrate eigenvalues, and for any degenerate eigenvalue with geometric multiplicity of $k$, there exsists $k$ number of eigenvectors $ket(psi)$, where the eigenvectors span an eigenspace $E_lambda$  of $hat(A)$  $ 
    hat(A) ket(psi_i) = lambda ket(psi_i) "for" i = 1,2,dots, k $ 
  Consider $hat(B)$ acting on the eigenspace of $hat(A)$: $ 
      hat(A) hat(B) ket(psi_i) = hat(B) hat(A) ket(psi_i) = lambda hat(B) ket(psi_i) 
  $ Similar to our previous case, $hat(E) ket(psi_i) in E_lambda$, or $hat(B)$ preserves the eigenspace $E_lambda$   

    Notice that for any vector $ket(alpha) in E_lambda$, where $E_lambda$ is spanned by eigenvectors $ket(psi_i)$  corresponding to the same degenerate eigenvalue $lambda$:
    $ 
        hat(A) ket(alpha) &= hat(A) ( sum_(i)^(k) c_i ket(psi_i) ) \ 
        & = c_i ( sum_(i)^(k) hat(A) ket(psi_i)) \ 
        & = c_i ( sum_(i)^(k) lambda ket(psi_i) ) \ 
        & = lambda ( sum_(i)^(k) c_i ket(psi_i) ) \ 
        & = lambda ket(alpha)
    $ <eq.anyVectorAlpha>
       Therefore, any $ket(alpha) in E_lambda$ is an eigenvector of $hat(A)$ with degenerate eigenvalue $lambda$.

    Spectral theorem tells us, and we take it as a fact that: $hat(B)$ is hermitian $=>$ it is diagnolizable on $E_lambda$. Suppose ${ket(phi_i)}$ is the orthonormal basis of $hat(B)_(E_lambda)$ (B constrained in eigenspace E), we have $ 
        hat(B) ket(phi_i) = mu ket(phi_i), quad i = 1,2, dots,k 
    $ 
    B acts in $E_lambda -> ket(phi_i) in E_lambda$ . @eq.anyVectorAlpha tells us that $ket(phi_i)$ is an eigenvector of $hat(A)$ as well. Noticing $ 
        hat(A) ket(phi_i) = lambda ket(phi_i) 
    $ we can state that ${ket(phi_i)}$ is also the orthonormal basis of $hat(A)$

    Repeacing the above for every degenerate eigenvalue of $hat(A)$, we can deduct that: 

#highlight[    for each $,  {phi_(j,i)}$, s.t. it is the simutanuous basis of (A)$ and (B)$]

The union of all ${phi_(j,i)}$ forms an orthonormal basis that can simutanuously diagnolize $hat(A)$ and $hat(B)$

Therefore, collecting the above, we have shown that if $[hat(A), hat(B)] = 0$, then they share a common eigenbasis. $qed$  

== Unitary operators
- A unitary operator is any linear operator whose Hermitian conjugate equals to its inverse. i.e. $ hat(U)^dagger = hat(U)^(-1)$ 
- Inner product presercation: $ 
    braket(phi,psi) = braket(hat(U) phi, hat(U) psi) 
$ 
    proof:
    $ 
        braket(hat(U)phi, hat(U) psi) &= bra(hat(U) phi) med hat(U) med ket(psi) \ 
        & = bra(phi) med hat(U)^dagger med hat(U) med ket(psi) \ 
        & = bra(phi) hat(U)^(-1) hat(U) ket(psi) \ 
        & = bra(phi) hat(I) ket(psi) \ 
        & = braket(phi,psi) quad qed
    $ 
    
Since inner product can be considered as a generalized dot product, or a measure of the norm and angle of two vectors, we can understand unitary operators as a "*generalized* *rotation*" of two vectors that conserves the norm and angle between them.

- Eigenvalue has unit length: $ 
    abs(lambda)^2 = 1 
$ 
    proof: 
    consider normalized eigenvector $ket(omega)$ and eigenvalue $lambda$ of $hat(U)$. That is, $ 
        cases(hat(U) ket(omega) = lambda ket(omega), braket(omega) = 1)
    $ 
     consider the following operation: $ 
         braket(hat(U) omega) = braket(omega) = 1 $    
         $ 
         braket(hat(U) omega, hat(U) omega) &= braket(lambda omega) \ 
         & = lambda lambda^* braket(omega) \ 
         & = abs(lambda)^2
     $ 
     Hence $abs(lambda)^2 = 1$

== Generator in classical mechanics
Recall the lagrangian formalism:
$ 
    cal(L) = T - U = 1/2 m dot(x) - U(x) \
    (diff cal(L))/(diff x) = (dif )/(dif t) (diff L)/(diff dot(x))  
$ 
The following equalities are trivial: $ 
     (diff cal(L))/(diff x) = (dif )/(dif t) p \
     (diff cal(L))/(diff p) = (diff )/(diff t) x \
     (diff cal(L))/(diff t) = - (dif )/(dif t) E \
     (diff cal(L))/(diff theta) = - (dif )/(dif t) L
$ 
Take a second to meditate on the above equalities, and we can find the following interpretation intuitive:

The time evolution of momentum results in a change in position in our "classical state" Lagrangian; 

the time evolution of position results in a change in momentum; 

the time evolution of energy results in a change in time; 

and the time evolution of angular momentum results in a change in angle.

There is a special name for the above: the *generator* of the transformation. For example, momentum is the genrator of spatial change, position is the genertor of momentum change.
 
== Schodinger's equation
=== Time evolution Operator: $hat(U)(t)$ 
We have been representing our quantum state as $ket(psi)$. Now let's consider the time evolution via the *time evolution operator *$hat(U)(t)$. It is defined as follows: $ 
    hat(U)(t) ket(psi) = ket(psi(t) )  
$ 

We observe several properties of this time evolution operator:
1. $hat(U)(0)$ represents the time evolution after time zero. Obviously there's no change in our quantum state during 0 seconds, so $ 
    hat(U)(0) = hat(I) 
$ 
2. Time evolution is reversible, so the linear operator $hat(U)(t)$ is invertable.
3. Recall that the ineer product operation examines the probability of a system being at a quantum state. This probability is conserved over time (why? hypothesis?), so $ 
    braket(hat(U)(t) psi) = braket(psi) = 1 
$ 
4. $hat(U)(t)$ is an unitary operator. We try to proof this property in the following section
=== Proof of unitary operator $hat(U)$ 
   
   Given (writing $hat(U)(t) "as" hat(U) $ ): $ 
       braket(hat(U) psi) = braket(psi)  
   $ 
   $ 
       "LHS" = braket(psi, hat(U)^dagger med hat(U) med psi) = bra(psi) med hat(U)^dagger  hat(U) ket(psi) \
         "RHS" = braket(psi) = bra(psi) hat(I) ket(psi) \
         => bra(psi) hat(U)^dagger hat(U) ket(psi) - bra(psi) hat(I) ket(psi) = 0 \
         bra(psi)underbrace((hat(U)^dagger hat(U) - hat(I)), "investigate") ket(psi) = 0
   $ <eq.unitary1>
   Let's investigate $(hat(U)^dagger hat(U) - hat(I))$ by considering $ 
       (hat(U)^dagger hat(U) - hat(I))^dagger  = (hat(U)^dagger  hat(U))^dagger  - hat(I)^dagger  = hat(U)^dagger  hat(U) - hat(I)
   $ 
    
  Let $hat(U)^dagger hat(U)- hat(I) equiv hat(A)$, and denote its eigenbasis as ${ket(a_i)}$. Plugging into @eq.unitary1:
  $ 
      bra(psi) hat(A) ket(psi) = 0  
  $ Since it is true for any state $ket(psi)$, we can subsitute $ket(psi)$ as $ket(a_i)$, the eigenbasis of $hat(A)$:
    $ 
        bra(a_i) hat(A) ket(a_i) = 0 \
        bra(a_i) lambda_i ket(a_i) = 0 \
        lambda_i = 0 quad "for all" i
  $ 
  Consider now: $ 
      hat(A) ket(psi) &= hat(A) sum c_i ket(a_i)   \ 
      & = sum hat(A) c_i hat(a_i) \ 
      & = sum lambda_i c_i ket(a_i) \ 
      & = 0    
  $ 
   It is safe to conclude that $hat(A) = hat(0)$. Recalling that 
   $ hat(A) = hat(U)^dagger hat(U) - hat(I) = 0 \ 
    hat(U)^dagger  hat(U) = hat(I) \
    hat(U)^dagger  = hat(U)^(-1) $ we have shown that $hat(U)$ is an unitary operator. $qed$ 
   

=== Explicit time evolution
Consider a quantum state $ket(psi)$ that evolves over an infinitisemal time $dif t$. Summoning our friend Taylor, we can show $ 
    hat(U)(dif t) &= hat(U)(0) + dot(hat(U))(0) dif t + hat(cal(O))(dif t^2) \ 
    & = hat(I) + dot(hat(U))(0) dif t + hat(cal(O))(dif t^2) \
$ 
Now let's look at this infinitisemal time evolution operator acting on $ket(psi)$ 
$ 
    hat(U)(dif t) ket(psi) &= hat(I) ket(psi) + dot(hat(U))(0) dif t ket(psi) + hat(cal(O))(dif t^2) ket(psi) \ 
    & = ket(psi(dif t)) = ket(psi) + dot(hat(U))(0) dif t ket(psi) + hat(cal(O)) (dif t ^2)ket(psi)  
$ <eq.taylor1>

division of $dif t$ on both sides $ 
    (ket(psi(dif t))- ket(psi))/(dif t) = dot(hat(U))(0) ket(psi) + underbrace((hat(O)(dif t^2)ket(psi)) / (dif t), "negligible")
$ 
as $dif t -> 0$: $ 
    (dif )/(dif t) ket(psi) = dot(hat(U))(0)ket(psi) 
$ <eq.ode1>
Recalling $hat(U)$ is unitary: $hat(I) = hat(U)^dagger (dif t) hat(U)(dif t) $, plugging into @eq.taylor1 :
$ 
    hat(I) &= (hat(I) + dot(hat(U))(0)dif t + hat(cal(O))(dif t^2)^dagger ) (hat(I) + dot(hat(U))(0)dif t + hat(cal(O))(dif t^2)) \ 
    & = hat(I) + dot(hat(U))^dagger  (0) dif t + dot(hat(U))(0) dif t + cal(hat(O))(dif t^2)) $ 
        as $dif t -> 0$,  
    $ 
    
    => dot(hat(U))^dagger (0) + dot(hat(U))(0) = 0 \
    dot(hat(U))^dagger (0) = - dot(hat(U))(0)
$<eq.hermitianU> $dot(hat(U))$ is anti-hermitian.

Now consider $ (i dot(hat(U))(0))^dagger = dot(hat(U))^dagger (0) i^dagger  = i dot(hat(U))(0), $

$i dot(hat(U))(0)$ is Hermitian. Let $hat(H) = i dot(hat(U))(0) => dot(hat(U))(0) = hat(H) slash i$  
 
Now plugging back to @eq.ode1: $ 
    (dif )/(dif t) ket(psi) = hat(H)/i ket(psi) \
    i (dif )/(dif t) ket(psi) =  hat(H) ket(psi)
$ 

Recall that in classical mechanics, the generator of time evolution is Energy. We make an educated guess that $hat(H)$ is an energy operator. Then to align units on both sides, we multiply by $hbar$ who is of the unit $[J dot s]$ : $ 
#rect(inset: 8pt)[
$ display(    i hbar (dif )/(dif t) ket(psi) = hat(H) ket(psi) )$
]
$

We have thus arrived at the Schrodinger's equation. $qed$


== Schrodinger's equation in Momentum, Position and Energy bases

=== Momentum Operator
Recall that we proposed an energy operator $hat(H)$ on our way in deriving the Schrodinger's equation. This is actually the Hamiltonian of the system, and what we have shown is another way of getting the Hamiltonian-- different than what we've done using Legendre Transform in Classical Mechanics. 

The explicit formula of the Hamiltonian is $ 
    hat(H) = (hat(p)^2)/(2 m ) + V(hat(x)) 
$ 
Where $hat(p) $ is the momentum operator, as we shall discuss below by taking a detour to the Translation Operator $hat(T)(a)$

=== Translation Operator $->$ Momentum Operator

We define the Translation Operator as a linear operator s.t. for any state vector $ket(x)$ and any translational parameter $a$ :  $ 
    hat(T)(a) ket(x) = ket(x+a) 
$ 
 
For a quantum state on a continuous basis, $ 
    hat(T)(a) ket(psi) = hat(T)(a) integral_()  dif x psi(x) ket(x) = integral  dif x psi(x) ket(x+a) 
$ 

$hat(T)(a)$ is a translation that shifts all the quantum states by $a$.

It is self-evident that such a translation would preserve the overall probability of measurement $ 
    braket(hat(T) psi) = braket(psi) = 1
$ 
It is not hard to proof that the translation operator is unitary. (Similar to the proof of time evolution operator $hat(U)$) $ 
    hat(T) ^dagger  = hat(T)^(-1) 
$ 

Now consider a small spacial translation $dif x$, and summoning our friend Taylor: $ 
    hat(T)(dif x) ket(x) =  hat(I) + dot(hat(T))(0)dif x  + hat(cal(O))(dif x^2) ket(x)
$ 
Division by $dif x$, and taking its limit to 0, we have: $ 
    (dif )/(dif x) ket(x) = dot(hat(T))(0) ket(x) 
$ <eq.ode2>
Recalling the Unitary property of $hat(T)$, and reapeating the same step as we did in @eq.hermitianU, we can show that $dot(hat(T))(0)$ is anti-hermitian.

To further exploit @eq.ode2, we use the anti-hermitian property to consider $ 
    (i dot(hat(T))(0))^dagger = i dot(hat(T))(0) equiv = hat(p) \
    dot(hat(T))(0) = hat(p) slash i  
$ @eq.ode2 then becomes $ 
    i (dif )/(dif x) ket(x) = hat(p) ket(x)
$
Via observation, we can see that it is suggesting a generator of spatial translation. Our classical mechanics intuition tells us that this generator is the momentum operator. Now, unifying the units on both sides, we multiply by $hbar$ to arrive at$ 
    i hbar (dif )/(dif x) ket(x) = hat(p) ket(x) 
$ It is known as the momentum operator in the position basis.

Repeating similar processes for the position operator and the angular momentum operator, we can collect the following series of equations: $ 
    cases(display(i hbar (dif )/(dif p) ket(p) = -& hat(x) ket(p)),
          display(i hbar (dif )/(dif x) ket(x)  =& hat(p) ket(x)),
          display(i hbar (dif )/(dif theta) ket(theta)  = & hat(L) ket(theta)), 
           display(i hbar (dif )/(dif psi) ket(t)  = & hat(H) ket(psi)
    ))
$ 
Where position $hat(x)$ is the mementum generator, momentum $hat(p)$ is the translational generator, angular momentum $hat(L)$ is the anglular translation generator, and energy $hat(H)$ is the time-evolution generator.

This set of equations tells us, that physical observables can be understood as generators of some change in the quantum state.


==== More on the momentum operator $hat(p)$

Consider $ 
    hat(p) ket(psi) &=hat(p) integral_(-infinity)^infinity psi(x) ket(x) dif x   \ 
    & = integral_(-infinity)^(infinity) psi(x) hat(p) ket(x) dif x \ 
    & = integral_(-infinity)^(infinity)  dif x psi(x) i hbar (dif )/(dif x) ket(x) \
    &=  
$ 

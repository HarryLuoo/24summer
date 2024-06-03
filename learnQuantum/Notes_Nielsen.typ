#import "@preview/physica:0.9.3": *
#set heading(numbering:"1.I")


= Notes on Quantum computation and quantum information by Nielsen and Chuang
= Chapter 2: Linear algebra

== vector space
- $C^(n) $: space of all n-tuple complex numbers (c numbers)
i.e. $(z_1,z_2,z_3,...,z_n)$
 
- a vector space is closed under scalar multiplicationa nd addition

== Dirac notation
#table(
  columns: 2,
  [*Symbols*], [*Meaning*],
  $ket(v)$, [ket, a vector in vec space],
  $bra(v)$, [bra, a dual vector in vec space; the complex transpose of ket $bra(v) = (ket(v)^*)^T$ ],
  $braket(v,w)$, [inner product of $ket(v)$ and $ket(w)$] ,
  $ket(phi) times.circle ket(psi) $, [tensor product of $ket(phi)$ and $ket(psi)$ \ abbriviates as $ ket(phi) ket(psi)$ ],
  $ bold(A)^*$,[complex conjugate of $ bold(A)$ ] ,
  $ bold(A)^T$, [transpose of $ bold(A)$] ,
  $ bold(A)^dagger$, [hermitian conjugate of $ bold(A)$\ 
              i.e. $ bold(A)^dagger = (bold(A)^*)^T$ \
              $ display(mat(a,b;c,d)^dagger) = display(mat(a^*, c^(*);b^*, d^* )) $ ] ,
  $bra(phi)  bold(A) ket(psi)$, [inner product betweeen $ket(phi)$ and $ bold(A) ket(psi)$  ] 

)

== Span  
   a set of bec $ket(v_1), ket(v_2), dots ,  ket(v_n)$ spans the vector space if any vector in the space can be written as $ 
    ket(v) = sum_i a_i ket(v_i) $ for some complex numbers $a_i$ 
== Linear Independence
a set of non-zero vectors $ket(v_1), ket(v_2), dots, ket(v_n)$ are liinearly dependent if there exists a set of complex numbers $a_1,a_2, dots, a_n$, s.t. $ 
      a_1 ket(v_1) + a_2 ket(v_2) + dots + a_n ket(v_n) = 0  
  $ 
    
  If the only solution to the above equation is $a_1 = a_2 = dots = a_n = 0$, then the vectors are *linearly independent*
  
 == Linear operators
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


== Hilbert Space
Given a vector basis ${ket(E_i)}$ , when attempting to represent a polynomial as $p = sum_(i = 0)^infinity a_i E_i$, the sum is in the form of, according to taylor series, an exponential function. But the exponential function is not a polynomial, i.e. outside of our vector space, so we have landed on a paradox. To avoid this, we define a *Hilbert* *Space* to handle infinite dimensional vector spaces.

- A Hilbert spsace is a vector space that is 1. complete and 2. has an inner product defined on it. In other words, every converging set of vectors must converge to an element *inside* the vector space.

$ 
    ket(psi) in cal(H) 
$ 


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
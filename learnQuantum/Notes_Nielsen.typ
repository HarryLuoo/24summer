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

= Inner product

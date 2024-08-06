- Raynold's number: help determine flow regime and separate weather effect from the drag effect.
  $ 
     "Re" =  (rho v l )/(mu) 
  $ 

  solve for $v$ $ 
      v = (mu "Re" )/ rho l
  $ 
   
  $mu, rho$ are ready from script. Need discussion on $l$  . $v$ wind speed 
- Drag calculation
  $ 
      F_d = 1/2 C_d rho A v^2
  $ 
  plugging in v as in Re,
  $ 
      F_d = 1/2 C_d rho A (mu "Re" )^2/(rho^2 l^2)
  $
$ c_d = (2F_d)/(rho A v^2) $ 
- methodology:
  - coast down data : curve fitting $F_d$ v.s. speed
  - find $C_d$ from $F_d$
  - We can find Re from $v$ and $l$, but how to find $C_d$ from Re? i.e. how does Re help the actual drag calculation?
  
  - goal: find $F_d$ given weather and speed.     

discussion:
- Fit $C_d$ from speed data 
- find single curve: Re v.s. $C_d$ 
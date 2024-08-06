#set math.equation(numbering:"(1)")

= 微分算符(Differntiation notation): How many of these are there?


在微积分中，为了表示微分（求导），演化出了多种不同的记号。他们形态各异，但是意义相同。

下面以一个函数 $f$ 为例；函数 $f$ 有参数(parameter) $t$, 通常写作 $f(t)$. $f$ 对 $t$ 的导数可以写成：$
(dif f)/(dif t ) = (dif )/(dif t) f = f'(x) 
$ 
前面两个记号是 Leibniz 记号，意义基本上完全相同。如果$f$形态不太友善（比如一个很长的分式），那么第二个记号写起来会简洁一些。
#line(length: 100%)

在我们刚才讨论的参数方程的语境中，$f(t)$ 是关于参数$t$ 的函数，写作 $f(t) = (x(t), y(t))$. 可见，我们一打眼只能分别看出 $y$ 与 $t$ 的关系, $x$ 与 $t$ 的关系。

但通常情况下，我们对 $y$ 与 $x$ 的关系更感兴趣。因此，我们会想要求出 $y$ 对 $x$ 的导数。我们可以用如下方法找出：  
 $ 
(dif y(t))/(dif x(t)) = ((dif y(t))/(dif t)) /( (dif x(t))/(dif t)) = (dif / (dif t) y(t))/(dif / (dif t) x(t)) 
 $ <eq.1st>
 在一些情况下，第三种写法会更简洁一些。它会帮助你区分$y(t)$ 和参数$t$  

 现在目光转向参数方程$f(t) = (x(t), y(t))$ 的二阶导数.因为二阶导数就是一阶导数的再求导，所以可以写出$ 
      (dif ^2 y)/(dif x^2) = underbrace(dif/(dif x)((dif y)/(dif x)),(dif y)/(dif x)"对" x "再求导" ) $ <eq.2nd>
  把@eq.2nd 中的 $(dif y)/ (dif x)$ 记作$u$, 那么他就这么变：$ 
     (dif)/(dif x) ((dif y) /(dif x))= (dif u)/ (dif x) 
 $ 
  利用@eq.1st, 公式中的$y$ 现在是$u$, 那么 $
  (dif u)/(dif x) = (dif / (dif t) u)/(dif / (dif t) x) = display(dif / (dif t) (dif y)/(dif x))/display(dif / (dif t) x)
  $
   
 我们于是推出了参数方程的二阶导数的求导法则。如果推导过程看不懂，这个公式记住也不妨...$ 
      (dif ^2 y)/(dif x^2) = display(dif / (dif t) (dif y)/(dif x))/display(dif / (dif t) x)
 $ 
 
 - 下面再讨论刚才的问题，“$(dif)/(dif x), dif/(dif t), (dif x)/(dif t)$ 的区别？”
  
  $(dif)/(dif x), dif/(dif t)$ 都是微分算符，区别在于一个对参数$x$ 求导，一个对参数$t$ 求导。

  如果$x$ 是另一个参数$t$的函数，就比如在刚才的许多例子中出现的$x(t)$，那么$(dif x)/(dif t)$ 就是$x$ 对$t$ 的导数。严谨的话，应记作$display(dif x(t))/(dif t))$，以强调参数$t$。  它与常见的$(dif f（x)/(dif x)$ 没有概念上的区别，这里的$x(t)$ 与 $f(x)$ 都是关于某一个参数函数。
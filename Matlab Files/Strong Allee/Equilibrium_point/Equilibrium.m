fun = @root2d;
v0 = [60,20];
v = fsolve(fun,v0);

r=0.5; K=10; beta=0.4; alpha=0.7; a=0.04; b=0.07; c=0.7; delta0=1;  delta1=.3;
 x=v(1)  
 y= v(2)
 
 A11=-r*x/K*(2*x-(K+beta))+(a*alpha*y*x/(1+a*x+b*y)^2);
 A12=-(alpha*x*(1+a*x))/((1+a*x+b*y)^2);
 A21=(alpha*c*y+c*alpha*b*y^2)/((1+a*x+b*y)^2);
%  A22=-b*c*alpha*x*y/((1+a*x)*(1+b*y)^2)-delta1*y;
A22=-(c*alpha*b*x*y)/((1+a*x+b*y)^2)-delta1*y;

 B1=-(A11+A22)
 B2=A11*A22-A21*A12
 
 U=[A11 A12; A21 A22];
 e=eig(U);
  
 
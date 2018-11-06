fun = @root2d;
v0 = [1,1];
v = fsolve(fun,v0);
r=2; K=50; theta=4; alpha=0.7; a=0.04; b=0.07; delta0=1; delta1=.3; c=0.7;
 x=v(1)  
 y= v(2)
 
 A11=(r*(1-(x/K))*((x)/(x+theta)))-(r*(x/K)*((x)/(x+theta)))+(r*x*(1-(x/K))*((theta)/(x+theta)^2))-(((alpha*y)+(alpha*b*y*y))/((1+a*x+b*y)^2));
 A12=-alpha*x*(1+a*x)/((1+a*x+b*y)^2);
 A21=c*alpha*y*(1+b*y)/((1+a*x+b*y)^2);
%  A23=-b*c*alpha*x*y/((1+a*x)*(1+b*y)^2)-delta1*y;
A22=(c*alpha*x*(1+a*x)/((1+a*x+b*y)^2))-delta0-2*delta1*y;
 
 B1=-(A11+A22)
 B2=A11*A22-A21*A12;
 
 U=[A11 A12; A21 A22];
 e=eig(U);
 
 
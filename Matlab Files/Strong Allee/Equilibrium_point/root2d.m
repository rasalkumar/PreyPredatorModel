function F = root2d(v)

r=0.5; K=10; beta=0.4; alpha=0.7; a=0.04; b=0.07; c=0.7; delta0=1;  delta1=.3;

F=[(r*v(1)*(1-(v(1)/K))*(v(1)-beta)-alpha*v(1)*v(2)/(1+a*v(1)+b*v(2)));(c*alpha*v(1)*v(2)/(1+a*v(1)+b*v(2))-delta0*v(2)-delta1*v(2)*v(2))];

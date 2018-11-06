function F = root2d(v)

r=2; K=50; theta=4; alpha=0.7; a=0.04; b=0.07; delta0=1; delta1=.3; c=0.7;
F=[(r*(1-(v(1)/K))*(v(1)/(v(1)+theta))-(alpha*v(2)/((1+a*v(1)+b*v(2)))));((c*alpha*v(1)/((1+a*v(1)+b*v(2))))-delta0-delta1*v(2))];

function model
[T,Y]   = ode45(@Bqfun1,[0 100],[2 2]);
[T1,Y1] = ode45(@Bqfun2,[0 100],[2 2]);
[T2,Y2] = ode45(@Bqfun3,[0 100],[2 2]);

plot (T,Y(:,2),'b',T1,Y1(:,2),'r',T2,Y2(:,2),'g');
h=legend('a = 0.4','a = 0.04','a = 0.004',3)
xlabel('t');
ylabel('y');

function dy1 = Bqfun1(t,y)
dy1 = zeros(2,1);
r=2; K=50; theta=4; alpha=0.7; a=0.4; b=0.07; delta0=1; delta1=.3; c=0.7;
dy1=[(r*y(1)*(1-(y(1)/K))*((y(1))/(y(1)+theta))-(alpha*y(1)*y(2)/((1+a*y(1)+b*y(2)))))
    ((c*alpha*y(1)*y(2)/((1+a*y(1)+b*y(2))))-delta0*y(2)-delta1*y(2)*y(2))]

function dy2 = Bqfun2(t,y)
dy2 = zeros(2,1);
r=2; K=50; theta=4; alpha=0.7; a=0.04; b=0.07; delta0=1; delta1=.3; c=0.7;
dy2=[(r*y(1)*(1-(y(1)/K))*((y(1))/(y(1)+theta))-(alpha*y(1)*y(2)/((1+a*y(1)+b*y(2)))))
    ((c*alpha*y(1)*y(2)/((1+a*y(1)+b*y(2))))-delta0*y(2)-delta1*y(2)*y(2))]

function dy3 = Bqfun3(t,y)
dy3 = zeros(2,1);
r=2; K=50; theta=4; alpha=0.7; a=0.004; b=0.07; delta0=1; delta1=.3; c=0.7;
dy3=[(r*y(1)*(1-(y(1)/K))*((y(1))/(y(1)+theta))-(alpha*y(1)*y(2)/((1+a*y(1)+b*y(2)))))
    ((c*alpha*y(1)*y(2)/((1+a*y(1)+b*y(2))))-delta0*y(2)-delta1*y(2)*y(2))]
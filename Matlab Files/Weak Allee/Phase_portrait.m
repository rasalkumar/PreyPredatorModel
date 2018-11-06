function model
[T,Y]   = ode45(@Bqfun1,[0 1000],[2 2]);
%  [T1,Y1]   = ode45(@Bqfun1,[0 500],[1 8]);
%     plot (Y(:,1),Y(:,2))
    plot (T,Y(:,2),'DisplayName','y')
    hold on
    plot (T,Y(:,1),'DisplayName','x')
%  plot3 (T,Y(:,1),Y(:,2))
% plot (Y(:,1),Y(:,2),Y1(:,1),Y1(:,2))

xlabel('t');
ylabel('x,y');
legend('show')

function dy1 = Bqfun1(t,y)
dy1 = zeros(2,1);

r=2; K=50; theta=4; alpha=0.7; a=0.04; b=0.07; delta0=1; delta1=.3; c=0.7;

dy1=[(r*y(1)*(1-(y(1)/K))*((y(1))/(y(1)+theta))-(alpha*y(1)*y(2)/((1+a*y(1)+b*y(2)))))
    ((c*alpha*y(1)*y(2)/((1+a*y(1)+b*y(2))))-delta0*y(2)-delta1*y(2)*y(2))]


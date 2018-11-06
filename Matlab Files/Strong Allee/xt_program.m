function model
[T,Y]   = ode45(@Bqfun1,[0 100],[2 2]);
%  [T1,Y1]   = ode45(@Bqfun1,[0 100],[1 2]);
      plot (T,Y(:,2),'DisplayName','y')
      hold on
      plot (T,Y(:,1),'DisplayName','x')
%       plot (Y(:,1),Y(:,2))
%       hold on
%       plot (Y1(:,1),Y1(:,2))

% plot (Y(:,1),Y(:,2),Y1(:,1),Y1(:,2),Y2(:,1),Y2(:,2),Y3(:,1),Y3(:,2))
%   plot3 (T,Y(:,1),Y(:,2))

  xlabel('x')
  ylabel('y');
%   legend('show');



function dy1 = Bqfun1(t,y)
dy1 = zeros(2,1);
r=0.5; K=10; beta=0.4; alpha=0.7; a=0.04; b=0.07; c=0.7; delta0=1;  delta1=.3;
dy1=[(r*y(1)*(1-(y(1)/K))*(y(1)-beta)-alpha*y(1)*y(2)/(1+a*y(1)+b*y(2)))
    (c*alpha*y(1)*y(2)/(1+a*y(1)+b*y(2))-delta0*y(2)-delta1*y(2)*y(2))]

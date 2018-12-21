d0=100;
eta20=10;
V=25;
L1=500;
z0=V*sind(eta20);
tspan=[0, 100];
x0 = 0;
theta0=0;
y0=[d0;z0;x0;theta0];
e=1/(sqrt(2));
R=500;
c=sqrt(1-(L1/2/R)^2);
w=c*sqrt(2)*V/L1;
[t,y] = ode45(@(t,y) model(t,y),tspan,y0);
%plot(t,y(:,1));

polarplot(y(:,4),R+y(:,1))
hold on
theta = linspace(0,2*pi,100);
polarplot(theta,R+zeros(size(theta)),'--k')
grid on



function rk=model(t,y)
    d0=100;
    theta0=0;
    eta20=10;
    V=25;
    L1=500;
    z0=V*sind(eta20);
    tspan=[0, 100];
    x0 = 0;
    y0=[d0;z0;x0;theta0];
    e=1/(sqrt(2));
    R=500;
    c=sqrt(1-(L1/2/R)^2);
    w=c*sqrt(2)*V/L1;
    eta2 = y(2)/V;
    thetadot=V*cos(y(2)/V)/(R+y(1));
    xdot=V*cos(eta2);
    rk=[y(2);-(2*e*w*y(2)+(w^2)*y(1));xdot;thetadot];
end


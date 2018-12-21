d0=100;
eta20=10;
V=25;

z0=V*sind(eta20);
tspan=[0, 100];
x0 = 0;
y0=[d0;z0;x0];
e=1/(sqrt(2));

xt = linspace(0,100,100);
yt=zeros(size(xt));

L1=120;
w=sqrt(2)*V/L1;
[t,y] = ode45(@(t,y) model1(t,y),tspan,y0);
%plot(y(:,3),y(:,1));
at=-(2*e*w.*y(:,2)+(w^2).*y(:,1));
plot(t,at);

L1=200;
w=sqrt(2)*V/L1;
hold on
[t,y] = ode45(@(t,y) model2(t,y),tspan,y0);
%plot(y(:,3),y(:,1));
at=-(2*e*w.*y(:,2)+(w^2).*y(:,1));
plot(t,at);

L1=400;
w=sqrt(2)*V/L1;
hold on
[t,y] = ode45(@(t,y) model3(t,y),tspan,y0);
%plot(y(:,3),y(:,1));
at=-(2*e*w.*y(:,2)+(w^2).*y(:,1));
plot(t,at);

L1=1000;
w=sqrt(2)*V/L1;
hold on
[t,y] = ode45(@(t,y) model4(t,y),tspan,y0);
%plot(y(:,3),y(:,1));
at=-(2*e*w.*y(:,2)+(w^2).*y(:,1));
plot(t,at);

plot(xt,yt,'--k','linewidth',2);
grid on
legend('L1=120','L1=200','L1=400','L1=1000','ref')


function rk=model1(t,y)
    d0=100;
    eta20=10;
    V=25;
    L1=120;
    z0=V*sind(eta20);
    tspan=[0, 100];
    x0 = 0;
    y0=[d0;z0;x0];
    e=1/(sqrt(2));
    w=sqrt(2)*V/L1;
    eta2 = y(2)/V;
    xdot=V*cos(eta2);
    rk=[y(2);-(2*e*w*y(2)+(w^2)*y(1));xdot];
end

function rk=model2(t,y)
    d0=100;
    eta20=10;
    V=25;
    L1=200;
    z0=V*sind(eta20);
    tspan=[0, 100];
    x0 = 0;
    y0=[d0;z0;x0];
    e=1/(sqrt(2));
    w=sqrt(2)*V/L1;
    eta2 = y(2)/V;
    xdot=V*cos(eta2);
    rk=[y(2);-(2*e*w*y(2)+(w^2)*y(1));xdot];
end
function rk=model3(t,y)
    d0=100;
    eta20=10;
    V=25;
    L1=400;
    z0=V*sind(eta20);
    tspan=[0, 100];
    x0 = 0;
    y0=[d0;z0;x0];
    e=1/(sqrt(2));
    w=sqrt(2)*V/L1;
    eta2 = y(2)/V;
    xdot=V*cos(eta2);
    rk=[y(2);-(2*e*w*y(2)+(w^2)*y(1));xdot];
end
function rk=model4(t,y)
    d0=100;
    eta20=10;
    V=25;
    L1=1000;
    z0=V*sind(eta20);
    tspan=[0, 100];
    x0 = 0;
    y0=[d0;z0;x0];
    e=1/(sqrt(2));
    w=sqrt(2)*V/L1;
    eta2 = y(2)/V;
    xdot=V*cos(eta2);
    rk=[y(2);-(2*e*w*y(2)+(w^2)*y(1));xdot];
end


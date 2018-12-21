d0=100;

V=25;
L1=400;

tspan=[0, 100];
x0 = 0;
eta20=-40;
z0=V*sind(eta20);
y0=[d0;z0;x0];
e=1/(sqrt(2));
w=sqrt(2)*V/L1;
[t,y] = ode45(@(t,y) model1(t,y),tspan,y0);
xt = linspace(0,2500,2500);
yt=zeros(size(xt));
plot(y(:,3),y(:,1));
at=-(2*e*w.*y(:,2)+(w^2).*y(:,1));
%plot(t,at);
hold on

grid on

eta20=30;
z0=V*sind(eta20);
y0=[d0;z0;x0];
[t,y] = ode45(@(t,y) model2(t,y),tspan,y0);
plot(y(:,3),y(:,1));
at=-(2*e*w.*y(:,2)+(w^2).*y(:,1));
%plot(t,at);
hold on

eta20=-10;
z0=V*sind(eta20);
y0=[d0;z0;x0];
[t,y] = ode45(@(t,y) model3(t,y),tspan,y0);
plot(y(:,3),y(:,1));
at=-(2*e*w.*y(:,2)+(w^2).*y(:,1));
%plot(t,at);
hold on

eta20=-30;
z0=V*sind(eta20);
y0=[d0;z0;x0];
[t,y] = ode45(@(t,y) model4(t,y),tspan,y0);
plot(y(:,3),y(:,1));
at=-(2*e*w.*y(:,2)+(w^2).*y(:,1));
%plot(t,at);
hold on

eta20=0;
z0=V*sind(eta20);
y0=[d0;z0;x0];
[t,y] = ode45(@(t,y) model5(t,y),tspan,y0);
plot(y(:,3),y(:,1));
at=-(2*e*w.*y(:,2)+(w^2).*y(:,1));
%plot(t,at);
hold on
plot(xt,yt,'--k');
legend('n2= 10°','n2= 30°','n2= -10°','n2= -30°','n2= 0','ref')


function rk=model1(t,y)
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

function rk=model2(t,y)
    d0=100;
    eta20=30;
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
function rk=model3(t,y)
    d0=100;
    eta20=-10;
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
    eta20=-30;
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

function rk=model5(t,y)
    d0=100;
    eta20=0;
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

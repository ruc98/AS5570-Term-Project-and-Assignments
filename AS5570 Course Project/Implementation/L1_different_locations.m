d0=100;
eta20=10;
V=25;
L1=150;
z0=V*sind(eta20);
tspan=[0, 100];
x0 = 0;
y0=[d0;z0;x0];
e=1/(sqrt(2));
w=sqrt(2)*V/L1;
[t,y] = ode45(@(t,y) model(t,y),tspan,y0);
xt = linspace(0,100,100);
yt=zeros(size(xt));
%xref=y(:,3)+sqrt(L1^2-y(:,1).^2);
xref=y(:,3)+L1*cos(y(:,1)./L1);

plot(y(:,3),y(:,1),'--.k','linewidth',2);
hold on
plot(xt,yt,'--k','linewidth',2);
grid on
for i=8:20
    plot([y(4*i,3),xref(4*i)],[y(4*i,1),0],'-*b','linewidth',2)
    hold on
end


function rk=model(t,y)
    d0=100;
    eta20=10;
    V=25;
    L1=150;
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


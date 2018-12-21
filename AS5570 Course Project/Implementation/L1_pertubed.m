d0=100;
eta20=10;
V=25;
L1=100;
z0=V*sind(eta20);
tspan=[0, 30];
x0 = 0;
y0=[d0;z0;x0];
e=1/(sqrt(2));
w=sqrt(2)*V/L1;
[t,y] = ode45(@(t,y) model(t,y),tspan,y0);
y1=25*sin(2*pi*V*t/(4.4*L1));
plot(t,y1,'--k');
hold on
plot(t,y(:,1));
grid on


function rk=model(t,y)
    d0=100;
    eta20=10;
    V=25;
    L1=100;
    z0=V*sind(eta20);
    tspan=[0, 30];
    x0 = 0;
    y0=[d0;z0;x0];
    e=1/(sqrt(2));
    w=sqrt(2)*V/L1;
    eta2 = y(2)/V;
    xdot=V*cos(eta2);
    dstar=25*sin(2*pi*(V*t+L1*1.1)/(4.4*L1));
    rk=[y(2);(w^2)*dstar-(2*e*w*y(2)+(w^2)*y(1));xdot];
end


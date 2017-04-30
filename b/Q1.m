close all;clear;clc

ts=0:30;
x0=[5 2 1 0];% 4¸öÊý£ºS E I R
[t,x]=ode45('seir',ts,x0);

figure(1);
plot(t,x(:,1),'-b',t,x(:,2),'-r',t,x(:,3),'-g',t,x(:,4),'-y'),grid
legend('S','E','I','R');
title('Propagation : 1 Message');
xlabel('Time');ylabel('Amount');

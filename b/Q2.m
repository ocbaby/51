close all;clear;clc

hap=5;
t1=0:hap;
x0=[5 2 1 0];% 4个数：S E I R
[t1,x1]=ode45('seir',t1,x0);
x0=x1(length(x1),:);
t2=hap:30;
x_new=[0 2 0];
x0=[x0 sum(x0)-sum(x_new) x_new];% 4个数：S E I R
[t2,x2]=ode45('seir_2',t2,x0);
x=[x1 zeros(length(x1),4);x2];
t=[t1;t2];

figure(2);
subplot(2,1,1);plot(t,x(:,1),'-b',t,x(:,2),'-r',t,x(:,3),'-g',t,x(:,4),'-y'),grid;
legend('S','E','I','R');xlabel('Time');ylabel('Amount');title('Propagation: 2 Relevant Messages');
subplot(2,1,2);plot(t,x(:,5),'-b',t,x(:,6),'-r',t,x(:,7),'-g',t,x(:,8),'-y'),grid;
legend('S','E','I','R');xlabel('Time');ylabel('Amount');


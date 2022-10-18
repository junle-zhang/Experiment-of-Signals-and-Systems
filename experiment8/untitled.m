clear;clc;
a = [1 2 2];
b = [1 3];
sys=tf(b, a); 
p = 0.01;
totaltime=10
t = 1:p:totaltime;
f = zeros(1, length(t));
e = heaviside(t);
y = lsim(sys, e, t); %系统的零状态响应
plot(t,y);
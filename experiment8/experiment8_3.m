clear;clc;
a = [1 2 2];
b = [1 3];
[A, B, C, D] = tf2ss(b, a); 
% tf2ss 函数将传递函数模型转化为状态空间模型
sys = ss (A, B, C, D);
% sys 由函数 ss 构造的状态空间模型
p = 0.01;
t = 1:p:3;
f = zeros(1, length(t));
e = heaviside(t);
y = lsim(sys, e, t); %系统的零状态响应
plot(t,y);
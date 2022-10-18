%实验四
%一、
clear;clc;
syms t s;
f=exp(-0.2*t);
F=laplace(f);
H=1/(s+0.1)/(s+0.2);
fresult=ilaplace(F*H);
ezplot(fresult,[0,100]);

clear,clc
t=0:0.0001:0.5;
f=exp(-0.2*t).*sin(100*t+eps)./(100*t+eps);
F=fft(f);
g=(square(2*pi*200*t,10)+1)/2;
a=f.*g;
[nb,na]=butter(4,200,'s');
sys=tf(nb,na);
c=lsim(sys,a,t);
subplot(2,2,1);
plot(t,f);
subplot(2,2,2);
plot(t,g);
subplot(2,2,3);
plot(t,c);


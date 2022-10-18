clear;clc;
subplot(2,3,1)
t=0:0.01:100;
y1=cos(0.1*t);
plot(t,y1,'r');
k=0:100;
hold on
y2=cos(0.1*k);
stem(k,y2,'g');

%第二题
subplot(2,3,2)
g=@(t)t.*exp(-2*t).*sin(10*t).*heaviside(t);
for i=1:4000
    w(i)=(i-1)/100-20;
    F=@(x)g(x).*exp(-1j*w(i).*x);
    G(i)=quad(F,0,10);
end
subplot(2,3,2);
[AX,HA,HB]=plotyy(w,abs(G),w,angle(G));
set(AX(1),'yTick');
set(AX(2),'yTick');
title('频域波形图');
xlabel('角频率');
d1=get(AX(1),'ylabel'); set(d1,'string','幅度');
d2=get(AX(2),'ylabel'); set(d2,'string','相角');
set(HA,'color','r');
set(HB,'color','g');
legend('幅频特性曲线','相频特性曲线');

%第三题
subplot(2,3,3)
b=[1,8];
a=[1,1,3];
sys=tf(b,a);
t=0:0.01:20;
y3_1=impulse(sys,t);
plot(t,y3_1,'r');
xlim([0,15]);
hold on
e3=sin(2*t).*heaviside(t);
y3_2=lsim(sys,e3,t);
plot(t,y3_2,'g');
xlim([0,15]);

%第四题
subplot(2,3,4)
for i=1:1000
    w4(i)=(i-1)/50;
    z=exp(1j*w4(i));
    Hz(i)=(z^2+z)/(z^2-0.9*z);
end
[AX,HA,HB]=plotyy(w4,abs(Hz),w4,angle(Hz));
set(AX(1),'yTick');
set(AX(2),'yTick');
title('频域波形图');
xlabel('角频率');
d1=get(AX(1),'ylabel'); set(d1,'string','幅度');
d2=get(AX(2),'ylabel'); set(d2,'string','相角');
set(HA,'color','r');
set(HB,'color','g');
legend('幅频特性曲线','相频特性曲线');

subplot(2,3,5)
k=0:50;
x=1+cos(pi/6*k)+cos(pi/4*k);
sys=tf([1,0,1],[1,-0.9,0],-1);
y4=lsim(sys,x,k);
stem(k,x,'r');hold on
stem(k,y4,'g');

%第五题
subplot(2,3,6)
t=0:0.001:10;
f=[2*cos(3*t)+5*exp(-0.5*t)].*heaviside(t);
f1=f.*cos(100*t).*cos(100*t);
sys=tf([10],[1,10]);
g=lsim(sys,f1,t);
plot(t,f,'r');
hold on
plot(t,g,'g');








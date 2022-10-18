clear;clc;
%1
subplot(2,4,1)
t=(0:0.001:40)-20;
lengtht=length(t);
f=zeros(1,lengtht);
for i=1:lengtht
    if t(i)>=0 && t(i)<=5
        f(i)=t(i);
    elseif t(i)>5 && t(i)<=10
        f(i)=10-t(i);
    else
        f(i)=0;
    end
end
for i=1:lengtht
    fodd(i)=(f(i)-f(lengtht+1-i))/2;
end

plot(t,f,'k',t,fodd,'r');legend('f(t)','fodd(t)');xlabel('t');legend('函数图像');title('题目1');

%2
subplot(2,4,2)
x=f.*cos(100*pi*t)+fodd.*cos(200*pi*t);
fs=1000;
N=100000;
temp=1:100000;
w=(temp-1)*2*pi*fs/N;
G=fft(x)/fs;
absG=abs(G);
plot(w(1:20000),absG(1:20000));legend('幅度频谱');xlabel('w');ylabel('|X(jw)|');title('题目2');
xlim([0,1000]);

%3
subplot(2,4,3)
w=0:0.01:100;
lengthw=length(w);
for i=1:lengthw
    H(i)=(w(i)+1)/(w(i)^2+19*w(i)+90);
end
plot(w,abs(H));legend('幅频特性曲线');xlabel('w');ylabel('|H(jw)|');title('题目3');
%4
subplot(2,4,4)
e=x.*cos(100*pi*t);
sys=tf([1,1],[1,19,90]);
r=lsim(sys,e,t);
plot(t,r);xlabel('t');ylabel('r(t)');
xlim([0,20]);legend('响应波形');title('题目4');

%5
subplot(2,4,5)
fs=256;
Ts=1/fs;
Nc=512;
f=zeros(1,Nc);
for n=1:Nc
    nT(n)=Ts*n;
    f(n)=2+sin(10*pi*nT(n))+0.5*cos(20*pi*nT(n)+pi/3);
end
dw=fs/Nc*2*pi;
w=(1:512)*dw;
F=fft(f)*Ts;
lengthF=length(F);
plot(w,abs(F));legend('幅度频谱');xlabel('w');ylabel('|Y(jw)|');title('题目5');
xlim([0,100])
%6
subplot(2,4,6)
w=0:0.001:2*pi;
z=exp(1j*w);
H=z./(z-1);
plot(w,abs(H));legend('幅频特性曲线');xlabel('w');ylabel('|H(z)|');title('题目6(1)');
ylim([0,10]);


subplot(2,4,7)
sysd=tf([1,0],[1,-1],-1);
inputx=ones(1,23);
outputr=lsim(sysd,inputx);
nd=(1:23)-2;
%本题零输入响应rz(n)=y(-1)=1
stem(nd,outputr);legend('全响应序列');xlabel('n');ylabel('y(n)');title('题目6(2)');

subplot(2,4,8)
x=[1,2,3,4];
h=[2,1,0,1];
nx = length(x);
nh = length(h);
y = zeros(1,nx+nh-1);
for index = 1:nx
    indexSum = x(index)*h;
    y(1,index:index+nh-1) = y(1,index:index+nh-1)+indexSum;
end
nactual=-1:5;
stem(nactual,y);legend('卷积和序列') ;xlabel('n');ylabel('y(n)');title('题目7');







%三、1.
%数值计算法
clear,clc
figure(1)
g=@(t)(t+pi).*(t>-pi&t<0)+(-t+pi).*(t>=0&t<pi);
for i=1:2000
    w(i)=(i-1)/50;
    F=@(x)g(x).*exp(-1j*w(i).*x);
    G(i)=quad(F,-pi,pi);
end

subplot(2,1,1);
plot(w(1:300),abs(G(1:300)));
subplot(2,1,2);

%由于angle函数会将实部虚部都为0的位置认定为pi，需要将所有an=0对应的相位置零
angleG=angle(G(1:400));
for i=1:3
    angleG(2*i*50+1)=0;
end

plot(w(1:400),angleG);
ylim([-pi,pi]);

%DFT法
figure(2)

f=@(t)(pi-t)*(t>0&t<pi)+(t+pi)*(t<0&t>-pi);
time=0.001:0.001:10;
for i=1:10000
    gd(i)=f(time(i)-pi);
    w(i)=(i-1)*0.2*pi;
end

Gfft=fft(gd)/1000;
absGfft=abs(Gfft);
angleGfft=angle(Gfft);
subplot(2,1,1);
plot(w(1:50),absGfft(1:50));
subplot(2,1,2);
plot(w(1:50),angleGfft(1:50));
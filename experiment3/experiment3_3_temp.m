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
fs=1000;
N=10000;
t=1:N;
w2=(t-1)*0.2*pi;
time=(0:N-1)/fs;   
gd=g(time-pi);

n=2^nextpow2(N);
Gfft=fft(gd,n)/fs;
absGfft=abs(Gfft(1:100));
angleGfft=angle(Gfft(1:100));
for i=1:100
    if angleGfft(i)<10^(-14)
        %修正angle函数带来的误差
        angleGfft(i)=0;
    end
end

subplot(2,1,1);
plot(w2(1:100),absGfft);
subplot(2,1,2);
plot(w2(1:100),angleGfft);
ylim([-pi,pi]);
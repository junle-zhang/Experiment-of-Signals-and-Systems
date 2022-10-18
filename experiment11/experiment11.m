clear,clc
T=0.5;
Nc=100/T;
t=-Nc:Nc;
t=t';
[nt,~]=size(t);
nT=zeros(nt,1);
f=nT;
for n=-Nc:Nc
    nT(n+Nc+1)=T*n;
    f(n+Nc+1)=(sin(10*pi*nT(n+Nc+1))+eps)/(10*pi*nT(n+Nc+1)+eps);
end
figure(1);
subplot(1,2,1);
stem(nT,f);title("取样后的离散信号");
dw=1/T/nt*2*pi;
w=zeros(nt,1);
for time=1:nt
    w(time)=(time-1)*dw;
end
F=fft(f)*T;
subplot(1,2,2);
plot(w,abs(F));


T=0.2;
Nc=100/T;
t=-Nc:Nc;
t=t';
[nt,~]=size(t);
nT=zeros(nt,1);
f=nT;
for n=-Nc:Nc
    nT(n+Nc+1)=T*n;
    f(n+Nc+1)=(sin(10*pi*nT(n+Nc+1))+eps)/(10*pi*nT(n+Nc+1)+eps);
end
figure(2);
subplot(1,2,1);
stem(nT,f);
dw=1/T/nt*2*pi;
w=zeros(nt,1);
for time=1:nt
    w(time)=(time-1)*dw;
end
F=fft(f)*T;
subplot(1,2,2);
plot(w,abs(F));



T=0.01;
Nc=100/T;
t=-Nc:Nc;
t=t';
[nt,~]=size(t);
nT=zeros(nt,1);
f=nT;
for n=-Nc:Nc
    nT3(n+Nc+1)=T*n;
    f3(n+Nc+1)=(sin(10*pi*nT3(n+Nc+1))+eps)/(10*pi*nT3(n+Nc+1)+eps);
end
figure(3);
subplot(1,2,1);
stem(nT3,f3);
dw=1/T/nt*2*pi;
w=zeros(nt,1);
for time=1:nt
    w(time)=(time-1)*dw;
end
F=fft(f)*T;
subplot(1,2,2);
plot(w,abs(F));
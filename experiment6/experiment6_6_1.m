clear;clc;
figure(1)
num=1;
den=[1 1];
freqz(num,den,128);

figure(2)
for n=1:400
    w(n)=(n-1)*0.05;
    z=exp(1j*w(n));
    H(n)=z/(1+z);
end
mag=abs(H);
phase=angle(H);
subplot(2,1,1)
plot(w,mag);
title("幅频特性");
subplot(2,1,2)
plot(w,phase);
title("相频特性");
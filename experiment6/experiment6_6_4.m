clear;clc;
for n=1:400
    w(n)=(n-1)*0.05;
    s=1j*w(n);
    H(n)=3*(s^2-3*s+2)/(s^2+3*s+2);
end
mag=abs(H);
phase=angle(H);
subplot(2,1,1)
plot(w,mag);
title("幅频特性");
subplot(2,1,2)
plot(w,phase);
title("相频特性");



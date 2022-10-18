clear;
clc;
%1.
figure(1)
f=@(t)(t+pi).*(t>-pi&t<0)+(-t+pi).*(t>=0&t<pi);
x=-4:0.01:4;
y=f(x);
plot(x,y);
title("时域波形");
%2.
figure(2)
a=zeros(1,21);
b=zeros(1,21);
a(1)=pi;
b(1)=0;
for n=1:20
    a(n+1)=2*(1-cos(n*pi))/(n^2*pi);
    b(n+1)=0;
end
n=0:20;
figure(2);
subplot(2,1,1);
stem(n,sqrt(a.^2+b.^2));
title("单边幅度谱");
subplot(2,1,2);
stem(n,-atan(b./a));
title("单边相位谱");

figure(3)
c=zeros(1,41);
phase=zeros(1,41);
n=-20:20;
c(21)=a(1)/2;
for count=1:20
    c(21+count)=a(count+1)/2;
    c(21-count)=a(count+1)/2;
end
subplot(2,1,1);
stem(n,c);
title("双边幅度谱");
subplot(2,1,2);
stem(n,phase);
title("双边相位谱")

%3.
fpower=@(x)f(x).*f(x);
totalpower=integral(fpower,-pi,pi)/(2*pi);
a(1)=a(1)/2;
sumpower=a(1)^2;
for i=2:21
    sumpower=sumpower+a(i)^2/2;
end
disp(totalpower);
disp(sumpower);

p1=a(1)^2/sumpower;
p2=a(2)^2/2/sumpower;
p3=a(3)^2/2/sumpower;
disp(p1);
disp(p2);
disp(p3);


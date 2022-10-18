clear;clc;
fh=@(t) exp(-t)*(cos(t) + 2*sin(t));
total=2000;
for i=1:total
    t(i)=(i-1)*0.01;
    h(i)=fh(t(i));
    e(i)=1;
end

result=conv(h,e);
plot(t(1:total),result(1:total));
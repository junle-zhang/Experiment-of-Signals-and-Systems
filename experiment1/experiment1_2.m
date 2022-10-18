clear;
m=1:10;
x=m;
d=2;
[y,n]=sigshift(x,m,d);
stem(m,x,"ko");
hold on;
stem(n,y,"ro");
hold off;
clear;

function [y,n]=sigshift(x,m,n0)
n=m+n0;
y=x;
end

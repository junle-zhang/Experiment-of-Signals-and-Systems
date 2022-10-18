clear,clc

x=-20:0.001:20;
x=x';
f1=@(t)2.*(t>=1)+(t<=1);
f2=@(t)exp(-(t+1)).*(t>=-1);
y1=f1(x);
y2=f2(x);
subplot(2,2,1);
plot(x,y1);
legend("f1");
subplot(2,2,2);
plot(x,y2);
legend("f2");
%预分配空间
[n,~]=size(x);
convresult=zeros(n,1);
%卷积step=0.1
subplot(2,2,3);
for count=1:n
    convresult(count)=myconv(f1,f2,0.1,x(count));
end
plot(x,convresult);
legend("step=0.1");
%卷积step=0.01
subplot(2,2,4);
for count=1:n
    convresult(count)=myconv(f1,f2,0.01,x(count));
end
plot(x,convresult);
legend("step=0.01");
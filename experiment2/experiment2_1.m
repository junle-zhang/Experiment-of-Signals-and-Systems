for i =1:100
    t(i)=(i-1)/50;
    F=@(x)f1(x).*f2(t(i)-x);
    f(i)=quad(F,0,t(i));
end
plot(t,f);legend('卷积结果')


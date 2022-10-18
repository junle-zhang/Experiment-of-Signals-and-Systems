clear;
f=@(x)(x+1)*(heaviside(x+1)-heaviside(x-1));
for i=1:80
    t(i)=-2+0.05*(i-1);
    g(i)=f(2*t(i))+f(t(i)).*epsilon(t(i));
end
plot(t,g)
clear;
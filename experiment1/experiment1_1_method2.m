syms t;
f=@(x)(x+1)*(heaviside(x+1)-heaviside(x-1));
g=f(2*t)+f(t).*heaviside(t);
fplot(g);
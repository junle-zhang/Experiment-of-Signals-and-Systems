function [y] = fun11(wave,T,tao,A,N)
syms t
y=0;
w=2*pi/T;
if(wave==1)
    for k=1:2:N
        y=y+4*A*sin(k*w*t)/pi/k;
    end
end
if(wave==2)
    y=y+A*tao/T;
   for k=1:N
       y=y+2*A*tao*sin(k*w*tao*0.5)/(k*w*tao*0.5)*cos(k*w*t)/T;
   end
end
if(wave==3)
    for k=1:N
        y=y+2*A/pi*(-1)^(k+1)/k*sin(k*w*t);
    end
end
end


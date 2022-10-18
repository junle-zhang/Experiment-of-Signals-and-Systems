function [y] = fun12(wave,T,tao,A)
w=2*pi/T;
if(wave==1)
    y(1)=0;
  for i=2:2:20
     y(i)=4*A/pi/(i-1);
  end
  for i=3:2:19
      y(i)=0;
  end
end
if(wave==2)
    y(1)=2*A*tao/T;
    for i=2:20
        y(i)=2*A*tao*sin((i-1)*w*tao*0.5)/((i-1)*w*tao*0.5)/T;
    end
end
if(wave==3)
    y(1)=0;
    for i=2:20
        y(i)=2*A/pi*(-1)^i/(i-1);
    end
end
end


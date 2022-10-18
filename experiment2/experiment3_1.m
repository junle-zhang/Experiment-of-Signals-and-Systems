for i=1:100
    t(i)=(i-50)*2*pi/100;
    yt(i)=f(t(i));
end

plot(t,yt)
function y=f(t)
if t<0 && t>-pi
    y=t+pi;
elseif t>0 && t<pi
    y=-t+pi;
else
    disp("error");
end
end
    
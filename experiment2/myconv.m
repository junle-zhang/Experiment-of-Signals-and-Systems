function y=myconv(f1,f2,step,t)
%默认f1和分f2为有始信号
    y=0;
    for tau=eps:step:t%防止0处无定义而将起点设为eps
        y=y+step.*(f1(tau).*f2(t-tau));
    end
end
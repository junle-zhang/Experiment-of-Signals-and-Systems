function y=myconv(f1,f2)
%默认f1和分f2为有始信号
    y=0;
    step=0.01;
    t=10;
    for tau=eps:step:t%防止0处无定义而将起点设为eps
        y=y+step.*(f1(tau).*f2(t-tau));
    end
end


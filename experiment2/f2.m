function y=f2(t)
    if t<0
        y=0;
    else
        if t>=0&&t<1
            y=sin(pi*t);
        else
            y=0;
        end
    end
end
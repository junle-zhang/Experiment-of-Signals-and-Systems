function [G,w]=fun14(wave,T,A)
if(wave==1)
    for i=1:100
        if i<=T       
            g(i)=A;
        else
            g(i)=0;
        end
        w(i)=(i-1)*2*pi/100;
    end
    G=fft(g);
    subplot(2,1,1)
    plot(w,abs(G));xlabel('w');ylabel('G');title('幅度频谱');
    subplot(2,1,2)
    plot(w,angle(G));xlabel('w');ylabel('相位');title('相位频谱');
else
    for i=1:100
        if i<=T/2
            g(i)=2*A/T*i;
        elseif i>T
            g(i)=0;
        else 
            g(i)=2*A-2*A/T*i;
        end
        w(i)=(i-1)*2*pi/100;   
    end
    G=fft(g);
    subplot(2,1,1)
    plot(w,abs(G));xlabel('w');ylabel('G');title('幅度频谱');
    subplot(2,1,2)
    plot(w,angle(G));xlabel('w');ylabel('相位');title('相位频谱');
end
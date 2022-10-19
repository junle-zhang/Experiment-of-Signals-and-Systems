function [G,w]=fun13(wave,T,A)
if(wave==1)
    for i=1:1000000
        t(i)=i*0.0001;
        if t(i)<=T       
            g(i)=A;
        else
            g(i)=0;
        end
        w(i)=(i-1)*20000*pi/1000000;
    end
    G=fft(g)/10000;
    subplot(2,1,1)
    plot(w(1:2000),abs(G(1:2000)));xlabel('w');ylabel('G');title('幅度频谱');
    subplot(2,1,2)
    plot(w(1:2000),angle(G(1:2000)));xlabel('w');ylabel('相位');title('相位频谱');
else
    for i=1:1000000
        t(i)=i*0.0001;
        if t(i)<=T/2
            g(i)=2*A/T*t(i);
        elseif t(i)>T
            g(i)=0;
        else 
            g(i)=2*A-2*A/T*t(i);
        end
        w(i)=(i-1)*20000*pi/1000000;   
    end
    G=fft(g)/10000;
    subplot(2,1,1)
    plot(w(1:2000),abs(G(1:2000)));xlabel('w');ylabel('G');title('幅度频谱');
    subplot(2,1,2)
    plot(w(1:2000),angle(G(1:2000)));xlabel('w');ylabel('相位');title('相位频谱');
end
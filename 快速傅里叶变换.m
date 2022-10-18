clear;clc;
fs=1000;
N=100000;
t=1:100000;
w=(t-1)*2*pi*fs/N;
[~,wsize]=size(w);
gate=zeros(1,wsize);
for countw=1:wsize
    if countw<=fs&&countw>=0
        gate(countw)=1;
    else
        gate(countw)=0;
    end    
end
G=fft(gate)/fs;

absG=abs(G);
angleG=angle(G);

subplot(2,1,1);
plot(w(1:320),absG(1:320));
subplot(2,1,2);
plot(w(1:320),angleG(1:320));
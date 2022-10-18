%实验三
%八、
clear;clc;
fs=11025;
nbits=16;
nchans=1;
time=1;
audio=sound_record(time,fs);
N=size(audio);
t=(1:N)/fs;
w=(1:N)*2*pi/time;
G=fft(audio)/fs;
absG=abs(G);
figure(1)
plot(t,audio);
figure(2)
plot(w,absG);


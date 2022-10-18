clear;clc;
for i=1:8000
    x(i)=sin(4*pi*i/8);
end
sound_play(x,8000);
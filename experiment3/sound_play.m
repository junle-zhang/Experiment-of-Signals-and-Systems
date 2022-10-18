function sound_play(x,fs)
P=audioplayer(x,fs);
[M,N]=size(x);
T=max(M,N)/fs;
play(P)
pause(T);
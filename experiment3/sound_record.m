function x=sound_record(time,fs)
R=audiorecorder(fs,16,1);
record(R);
pause(time);
pause(R);
x=getaudiodata(R);
stop(R);
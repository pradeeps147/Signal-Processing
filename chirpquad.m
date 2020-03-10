fs = 4410;%sampling frequency
t = 0:1/fs:2;
x = chirp(t,100,1,200,'quadratic');
%sound(x,fs)
%subplot(2,1,1);
figure(1)
plot(t,x)
figure(2)
window=hamming(windowsize);
windowsize=256;
%y=filter(window,x);
%subplot(2,1,2);
%plot(t,y)
spectrogram(x,window,220,256,fs,'yaxis')%windosize of window like hamming,hanning,backman etc
%256=n  windowsize,120(nooverlap)
%[s,w,t] = spectrogram(x,window,noverlap,w)
%[s,f,t] = spectrogram(x,window,noverlap,f,fs)
title('Quadratic Chirp')
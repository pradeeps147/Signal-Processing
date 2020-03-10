Fs = 4410;                             % Sampling Frequency (Hz)
Tmax = 5;                               % Duration (sec)
t = linspace(0, Tmax, Tmax*Fs);
f0 =10; %initial instantanious  frequency
f1 = 1000;%final frequency
x = chirp(t,f0,t(end),f1,'linear');
%sound(x,Fs)
windowsize=256;
filteredsignal= filter(lpf,x);%filter is ractangular
figure(1);
subplot(2,1,1)
plot(t,x)
title('chirp signal')
subplot(2,1,2)
plot(t,filteredsignal)
title('filtered chirp signal')
figure(2);
subplot(2,1,1)
spectrogram(filteredsignal,128,120,128,1e3,'yaxis')
title('filtered linear chirp')
subplot(2,1,2)
spectrogram(x,128,120,128,1e3,'yaxis')
title('linear chirp');


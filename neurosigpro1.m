clear all
t=0:0.01:2; %time in sec(0.01=sampling time=1/fs),where fs is sampling frequency 
a= 5; %amplitude
f=5;  %frequency
y=a*sin(2*pi*f*t); %sinosoidal wave
subplot(3,1,1)


plot(t,y)

xlabel('time')
ylabel('amplitude')


t=0:0.01:2;
a= 1;
f=2;
y=a*cos(2*pi*f*t); %cosine wave
subplot(3,1,2)
plot(t,y)
xlabel('time')
ylabel('amplitude')
y=a*cos(2*pi*f*t-pi); %phase shift of pi
subplot(3,1,3);
plot(t,y)
xlabel('time')
ylabel('amplitude')
figure(2)
spectrogram(y,'yaxis')

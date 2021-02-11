clc;clear;close all;
[N1,wc1]=buttord(0.2,0.3,1.25,15);
#wp,ws without pi,Ap,As without minus sign
Wc1=tan(wc1*pi/2);#captial Wc from wc.(wrap)
[b1,a1]=butter(N1,wc1);
figure(1)
zplane(b1,a1)
title('lowpass')
[N2,wc2]=buttord(0.3,0.2,1,15);
Wc2=tan(wc2*pi/2);
[b2,a2]=butter(N2,Wc2,"high");
figure(2)
zplane(b2,a2)
title('highpass')
h=freqz(b1,a1);
h2=abs(freqz(b2,a2));
figure(3)
fre=0.001:0.001:0.512;
plot(fre,abs(freqz(b1,a1)),'r');
hold on;
plot(fre,abs(freqz(b2,a2)),'g')
xlabel('W')
ylabel('abs(H(W))')
legend ('low pass','high pass');
figure(4)
plot(fre,20*log10(abs(h)),'r');
hold on;
plot(fre,20*log10(abs(h2)),'g')
xlabel('W')
ylabel('abs(H(W)) in dB')
legend ('low pass','high pass');


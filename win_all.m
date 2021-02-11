clc;clear;close all;
M=80;
n=-(M/2):1:(M/2);
w=5;
h=sin(w.*n)./(pi.*n);#sinc function 
h(41)=w/pi;
re=[zeros(1,30),ones(1,21),zeros(1,30)];#rectangular window
rect=h.*re;#h_ideal*window
H=fft(rect);
w_han=0.5*(1+cos((2*pi.*n)/M));
w_ham=0.54+0.46*cos((2*pi.*n)/M);

h_han=h.*w_han;#h_ideal*window
h_ham=h.*w_ham;#h_ideal*window

figure(1)
subplot(3,1,1)
stem(H)
xlabel('n')
ylabel('|h(n)|')
title('rect')
subplot(3,1,2);
stem(abs(h_han))
xlabel('n')
ylabel('|h(n)|')
title('hanning')
subplot(3,1,3);
stem(n,h_ham)
xlabel('n')
ylabel('|h(n)|')
title('hamming')
figure(2)
subplot(3,1,1)
plot(abs(H))
xlabel('w')
ylabel('|h(w)|')
title('rect')
subplot(3,1,2)
plot(abs(fft(h_han)))
xlabel('w')
ylabel('|h(w)|')
title('hanning')
subplot(3,1,3)
plot(abs(fft(h_ham)))
xlabel('w')
ylabel('|h(w)|')
title('hamming')
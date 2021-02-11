clc;clear;close all;
wc=1;
N=5;
k=0:2*N-1;
s=wc*exp(j*pi/2)*exp(((j*((2.*k)+1))*pi)/2*N);

figure(2)
stem(real(s),imag(s))
xlabel('real(s)')
ylabel('imag(s)')
clc;close all;clear all;
w=-pi:0.01:pi;
a=0.5;
N=15;
h=(1-a*exp(j.*w*N))./(1-a*exp(j.*w));
plot(w,abs(h))
title("comb filter N=15");
xlabel("w");
ylabel(" abs of H(w)");
z=exp(j*w);
z=1./z; 
H=(1-power(a*z,N))./(1-a*z);
m=1:1:N;
zplane([1,power(a,m)],[1,-a])
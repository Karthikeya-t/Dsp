clc;clear;close all;
k=-5:5;
#taken T =1
a=sin(k.*pi*1./2)./(pi.*k);#obtained ak's by formula 
a(k==0)=0.5;
subplot(3,1,1)
stem(k,a);
title("mag of ak's")
xlabel("k")
ylabel('mag of ak')
t=linspace(-3,3,100);
x=zeros(1,100);#original signal
x(t>-1 & t<1)=1;
s=zeros(1,length(t));
i=1;
for m=1:length(k)
 y=a(m).*exp((j.*k(m)*t*pi)./2);#by analysis formula
 s=s+y;
 i++;
endfor
subplot(3,1,2)
plot(t,s)
xlabel("w")
ylabel('x(w)')
title("gibbs representation")
hold on
plot(t,x) 
subplot(3,1,3)
zplane([0.5,a],[1])
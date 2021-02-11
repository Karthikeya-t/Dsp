clc;clear;close all;
f=0:8000;
w=2*pi*f;
fc1=3000;
wc1=2*pi*fc1;
n1=2;
n2=5;
n3=7;
n4=9;
h1=1./(1+power((w./wc1),2*n1));
h2=1./(1+power((w./wc1),2*n2));
h3=1./(1+power((w./wc1),2*n3));
h4=1./(1+power((w./wc1),2*n4));
plot(w,h1)
hold on;
plot(w,h2,'r')
hold on;
plot(w,h3,'g')
hold on;
plot(w,h4,'.')
xlabel('\Omega')
ylabel('|h(\Omega)|^2')


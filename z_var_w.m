clc;close;clear all
w=-2*pi:0.1:2*pi;

z=exp(j*w);

h1=1./(z-0.5*exp(j*0));
h2=1./(z-0.5*exp(j*(pi/2)));
h3=1./(z-0.5*exp(j*pi));
h4=1./(z-0.5*exp(j*(1.5*pi)));

subplot(4,1,1);
plot(w,abs(h1))
title("pole at w=0");
xlabel("w");
ylabel(" abs of H(w)");

subplot(4,1,2);
plot(w,abs(h2))
title("pole at w=pi/2");
xlabel("w");
ylabel(" abs of H(w)");

subplot(4,1,3);
plot(w,abs(h3))
title("pole at w=pi");
xlabel("w");
ylabel(" abs of H(w)");
subplot(4,1,4);
plot(w,abs(h4))
title("pole at w=1.5pi");
xlabel("w");
ylabel(" abs of H(w)");
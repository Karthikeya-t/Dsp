clc;close;clear all
w=-2*pi:0.1:2*pi;
h1=1./(exp(j.*w)-0.5);
h2=1./(exp(j.*w)-0.2);
h3=1./(exp(j.*w)-0.7);
h4=1./(exp(j.*w)-1.7);
subplot(4,2,1);
plot(w,abs(h1))
title("pole at +0.5");
xlabel("w");
ylabel("|H(w)|");

subplot(4,2,2);
plot(w,abs(h2))
title("pole at +0.2");
xlabel("w");
ylabel("|H(w)|");

subplot(4,2,3);
plot(w,abs(h3))
title("pole at +0.7");
xlabel("w");
ylabel("|H(w)|");

subplot(4,2,4);
plot(w,abs(h4))
title("pole at +1.7");
xlabel("w");
ylabel("|H(w)|");

h5=1./(exp(j.*0)+0.5);
h6=1./(exp(j.*pi)+0.5);
h7=1./(exp(j.*w)+0.7);
h8=1./(exp(j.*w)+1.7);
subplot(4,2,5);
plot(w,abs(h5))
title("pole at -0.5");
xlabel("w");
ylabel("|H(w)|");

subplot(4,2,6);
plot(w,abs(h6))
title("pole at -0.2");
xlabel("w");
ylabel("|H(w)|");

subplot(4,2,7);
plot(w,abs(h7))
title("pole at -0.7");
xlabel("w");
ylabel("|H(w)|");

subplot(4,2,8);
plot(w,abs(h8))
title("pole at -1.7");
xlabel("w");
ylabel("|H(w)|");
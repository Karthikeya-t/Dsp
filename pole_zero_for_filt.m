clc;clear;close all;
#order=2
#calculated manually,w=pi/2,wc1=pi/10;
subplot(2,2,1)
zplane([0.63662,0.5,0.63662],[1,0,0]);
title("Low Pass ");
subplot(2,2,2)
zplane([-0.63662,0.5,-0.63662],[1,0,0]);
title("High Pass");
subplot(2,2,3)
zplane([0.2199,0.4,0.2199],[1,0,0]);
title("Band Pass");
subplot(2,2,4)
zplane([-0.2199,0.6,-0.2199],[1,0,0]);
title("Band reject ");
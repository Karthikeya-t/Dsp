clc;
clear;
close all;
w=-pi:0.2:pi;
#m=even and symmetric
subplot(2,2,1)
zplane([0.5,0.5,0.5],[1]);
title('even,symmetric')
#m=odd and symmetric
subplot(2,2,2)
zplane([0,0.5,0.5],[1]);
title('odd,symmetric')
#m=even and antisymmetric
subplot(2,2,3)
zplane([-0.5,0,0.5],[1]);
title('even,antisymmetric')
#m=odd and antisymmetric
subplot(2,2,4)
zplane([-0.5,0.5],[1]);
title('odd,antisymmetric')

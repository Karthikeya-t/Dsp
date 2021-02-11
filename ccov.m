clc;clear;close all;
x = [1, 2, 3, 4];
h = [1,1,1,0];
n1=length(x);
n2 = length(h);
N =n1+n2-1;% max(n1,n2)
a=1:N;
x = [x,zeros(1,N-n1)];
h = [h,zeros(1,N-n2)];
y = zeros(1,N);
for i =0:N-1
   for j = 0:N-1
      k = mod((i-j),N);%to get h index
      y(i+1) = y(i+1) + x(j+1)*h(k+1);%rotating h
   end
end
figure(1)
subplot(2,1,1)
stem(a,x)
ylabel('x[n]')
xlabel('n')
subplot(2,1,2)
stem(a,h)
ylabel('h[n]')
xlabel('n')
figure(2)
stem(a,y)
ylabel('y[n]')
xlabel('n')
title("Circular conv")
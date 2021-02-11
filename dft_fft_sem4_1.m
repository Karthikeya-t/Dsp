x=[1,2,3,4,5,6,7,8];
N=length(x);
y=zeros(1,N);
for k = 1:N %for every value of k
 y(k) = 0;
  for n = 1:N %for every value of n
    y(k) = y(k)+x(n)*exp(-1i*2*pi*(k-1)*(n-1)./N);%analysis eq
  end 
end 
t = 0:N-1;
figure(1)
stem(t,x); % for discrete plotting
%plotting input sequence
ylabel('Amplitude x[n]');
xlabel('n');
title('Input');

magnitude = abs(y);
figure(2)
t = 0:N-1;
stem(t,abs(y));
%plotting FFT sequence
ylabel('Amplitude of y[k]');
xlabel('K');
title('FFT');
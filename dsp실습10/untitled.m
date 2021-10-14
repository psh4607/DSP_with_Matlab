clc; clear; 

t = -100:1/100:100;
t2 = -50:1/50:50;
t3 = -10:1/10:10;

y1 = sinc(t);
y2 = sinc(t2);
y3 = sinc(t3);

fy1 = fftshift(abs(fft(y1)));
fy2 = fftshift(abs(fft(y2)));
fy3 = fftshift(abs(fft(y3)));

subplot(3,2,1)
plot(t, y1)
title('range = -100 : 100')
subplot(3,2,2)
plot(t, fy1)
xlim([-2 2])
title('range = -100 : 100')
subplot(3,2,3)
plot(t2, y2)
title('range = -50 : 50')
subplot(3,2,4)
plot(t2, fy2)
xlim([-2 2])
title('range = -50 : 50')
subplot(3,2,5)
plot(t3, y3)
title('range = -10 : 10')
subplot(3,2,6)
plot(t3, fy3)
xlim([-2 2])
title('range = -10 : 10')


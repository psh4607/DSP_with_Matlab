clc; clear;

M = 7;  %% 7 tap 
wc = 0.5*pi;
fc = wc/pi;
N = (M-1)/2;
n = 0:1:M-1;
nf1 = -pi:2*pi/(M-1):pi;

hd1 = fc*sinc(fc*(n-N));
Hd1 = fftshift(abs(fft(hd1)));

window = kaiser(M,2.5);
Window = fftshift(abs(fft(window)));
w = zeros(1,M);

for i = n+1
    w(i) = hd1(i) * window(i);
end 
W = fftshift(abs(fft(w)));
 
subplot(2,3,1)
stem(n, hd1)
axis([0 M -0.2 0.6])
title("hd1[n]")

subplot(2,3,2)
stem(n, window)
title("window[n]")

subplot(2,3,3)
stem(n, w)
title("w[n] = hd1[n]window[n]")

subplot(2,3,4)
stem(nf1, Hd1)
title("hd1[w]")
subplot(2,3,5)
stem(nf1, Window)
title("Window[w]")
subplot(2,3,6)
stem(nf1, W)



clc; clear;

% M = 11;
M = 69;
% M = 129;

wc = 0.5*pi;
fc = wc/pi;
N = (M-1)/2;
n = 0:1:M-1;
nf1 = -pi:2*pi/(M-1):pi;

hd1 = fc*sinc(fc*(n-N));
Hd1 = fftshift(fft(hd1));

H = hamming(M);
h = zeros(1,M);

for i = n+1
    h(i) = hd1(i) * H(i);
end
W = fftshift(fft(h));

subplot(2,3,1)
stem(n, hd1)
axis([0 M -0.2 0.6])
subplot(2,3,2)
stem(nf1, abs(Hd1))
xlim([-4 4])
subplot(2,3,3)
stem(n, H)
xlim([0 M])
subplot(2,3,4)
stem(n, h)
axis([0 M -0.2 0.6])
subplot(2,3,5)
stem(nf1, abs(W))




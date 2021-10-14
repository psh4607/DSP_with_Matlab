clc;clear;
M = 100;
wc = 0.5*pi;
fc = wc/pi;
N = (M-1)/2;
n = 0:1:M-1;
nf1 = -pi:2*pi/(M-1):pi;

b = fc*sinc(fc*(n-N));

hamming = hamming(M);
hann = hann(M);
kaiser = kaiser(M);
h_b = b.*hamming';
h_b2 = b.*hann';
k_b = b.*kaiser';

fvtool(b)
wvtool(hamming) ;
wvtool(hann)
wvtool(kaiser)
fvtool(h_b)
fvtool(h_b2)
fvtool(k_b)

B = fftshift(abs(fft(b)));
mag_B = mag2db(B);
subplot(2,1,1)
plot(nf1,B);
xlim([0 4])
subplot(2,1,2)
plot(nf1,mag_B)
xlim([0 4])
clc; clear
%Audio Read classic guitar C4, C5
[C4, f6] = audioread('Ensoniq-SQ-1-ClassicGuitar-C4.wav');
[C5, f10] = audioread('Ensoniq-SQ-1-ClassicGuitar-C5.wav');

fs = 44.1*10^3;         % Sampling rate
dt = 1/fs;              % Time or space increment per sample
Nyq = fs/2;             % Nyquist frequency (midpoint of frequency range)

% analysis C4
n0 = length(C4);       % number of sample
t0 = (0:n0-1)/fs;         % The temporal or spatial extent of the data
y0 = fft(C4);          % Discrete Fourier Transform (DFT) of Data
amp0 = abs(y0);           % DFT amplitude
power0 = (abs(y0).^2)/n0;  % Power of DFT
f0 = (0:n0-1)*(fs/n0);     % Frequency Range


% analysis C5
n1 = length(C5);       % number of sample
t1 = (0:n1-1)/fs;         % The temporal or spatial extent of the data
y1 = fft(C5);          % Discrete Fourier Transform (DFT) of Data
amp1 = abs(y1);           % DFT amplitude
power1 = (abs(y1).^2)/n1;  % Power of DFT
f1 = (0:n1-1)*(fs/n1);     % Frequency Range


subplot(2,1,1)
plot(f0,amp0);
xlabel('Frequency');
ylabel('Amplitude');
title('Guitar C4')
subplot(2,1,2)
plot(f1,amp1);
xlabel('Frequency');
ylabel('Amplitude');
title('Guitar C5')


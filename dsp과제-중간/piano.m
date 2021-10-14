clc; clear
% Audio Read Middle C,F,G
[midC, f9] = audioread('Middle_C.wav');
[midF, f8] = audioread('Middle_F4.wav');
[midG, f7] = audioread('Middle_G4.wav');
[hiC, f6] = audioread('High_C5.wav');

% analysis midC
fs = 44.1*10^3;         % Sampling rate
n0 = length(midC);       % number of sample
dt = 1/fs;              % Time or space increment per sample
t0 = (0:n0-1)/fs;         % The temporal or spatial extent of the data
y0 = fft(midC);          % Discrete Fourier Transform (DFT) of Data
amp0 = abs(y0);           % DFT amplitude
power0 = (abs(y0).^2)/n0;  % Power of DFT
f0 = (0:n0-1)*(fs/n0);     % Frequency Range
Nyq = fs/2;             % Nyquist frequency (midpoint of frequency range)

% analysis midF
n1 = length(midF); t1 = (0:n1-1)/fs; y1 = fft(midF);         
amp1 = abs(y1); power1 = (abs(y1).^2)/n1; f1 = (0:n1-1)*(fs/n1);

% analysis midG
n2 = length(midG); t2 = (0:n2-1)/fs; y2 = fft(midG);          
amp2 = abs(y2); power2 = (abs(y2).^2)/n2; f2 = (0:n2-1)*(fs/n2);    

% anlysis highC
n3 = length(hiC); t3 = (0:n3-1)/fs; y3 = fft(hiC);          
amp3 = abs(y3); power3 = (abs(y3).^2)/n3; f3 = (0:n3-1)*(fs/n3);    

subplot(2,2,1)
plot(f0,amp0);xlabel('Frequency');ylabel('Amplitude');title('Middle C')
subplot(2,2,2)
plot(f1,amp1);xlabel('Frequency');ylabel('Amplitude');title('Middle F')
subplot(2,2,3)
plot(f2,amp2);xlabel('Frequency');ylabel('Amplitude');title('Middle G')
subplot(2,2,4)
plot(f3,amp3);xlabel('Frequency');ylabel('Amplitude');title('High C')

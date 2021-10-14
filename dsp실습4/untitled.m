clc; clear; 

x = 0:0.001:1;
freq = 5;

% COS 신호 생성
o_signal = cos(2*pi*freq*x);

fs = 7;

fs_signal = zeros(1,fs);
reconstructed = 0;
for i = 0:fs
    fs_signal(i+1) = cos(2*pi*freq*i/fs);
    reconstructed = reconstructed + fs_signal(i+1) * sinc((x-i/fs) * fs) ;
end

subplot(2,1,1)
plot(x,o_signal,'b');
title('Original Signal(blue), 7Hz Sampling Reconstruction Signal(Green)');
hold on
stem(0:1/fs:1,fs_signal,'r');
hold on
plot(x, reconstructed(1:length(x)), 'g')
hold off

fs2 = 14;

fs_signal2 = zeros(1,fs2);
reconstructed2 = 0;
for i = 0:fs2
    fs_signal2(i+1) = cos(2*pi*freq*i/fs2);
    reconstructed2 = reconstructed2 + fs_signal2(i+1) * sinc((x-i/fs2) * fs2) ;
end

subplot(2,1,2)
plot(x,o_signal,'b','LineWidth',2);
title('Original Signal(blue), 14Hz Sampling Reconstruction Signal(Green)');
hold on
stem(0:1/fs2:1,fs_signal2,'r');
hold on
plot(x, reconstructed2(1:length(x)), 'g','LineWidth',1.1)
hold off


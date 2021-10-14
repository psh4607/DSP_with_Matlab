clc;
clear;

t = linspace(0,1,101);
freq = 3;
sinY = sin(2*pi*freq*t);

fs = 500;
t2 = 0:1/fs:1;
sampledY = sin(2*pi*freq*t2);

partition = -0.75:0.25:0.75;
codebook = -0.875:0.25:0.875;
[index, quent] = quantiz(sampledY, partition, codebook);

subplot(3,1,1)
plot(t, sinY);
title('Original signal');
subplot(3,1,2)
stem(t2, sampledY);
title('Sampled signal');
subplot(3,1,3);
stem(t2, quent)
title('Quantized signal');

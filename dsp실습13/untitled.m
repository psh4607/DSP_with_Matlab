clc; clear;
fs = 8000;  % sample frequency

dp = 1; 
ds = 60;

dev_p = 10^(dp/20)-1;
dev_s = 10^(-ds/20);
% [n, f0, a0, m] = firpmord([500 1000], [1 0], [dev_p dev_s], fs);
% [n, f0, a0, m] = firpmord([1500 2000], [1 0], [dev_p dev_s], fs);
[n, f0, a0, m] = firpmord([2500 3000], [1 0], [dev_p dev_s], fs);

b = firpm(n, f0, a0, m); 

freqz(b);


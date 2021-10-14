clc; clear;

[org, fs] = audioread('audio_file.wav');
% 샘플링 frequency 가 1/2가 됌 
change = resample(org,1,2);
[org2, fs2] = audioread('audio_change.wav');

subplot(2,1,1)
stem(org)
axis([8540 8610 -0.15 0.15])

subplot(2,1,2)
stem(change)
axis([8540/2 8610/2 -0.15 0.15]);  % 절반으로 샘플링 했기 때문에 같은 범위를 보려면 절반으로 줄여야함.

% 변환해서 저장하기
% audiowrite('audio_change.wav',org,fs,'Bitspersample',8);

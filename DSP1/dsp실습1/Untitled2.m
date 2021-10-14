clc; clear;

[org, fs] = audioread('audio_file.wav');
change1 = resample(org,1,2);
change2 = resample(org,1,5);

audiowrite('audio_change.wav',org,fs,'Bitspersample',8);
audiowrite('audio_change1.wav',change1,fs/2,'Bitspersample',8);
audiowrite('audio_change2.wav',change2,fs/5,'Bitspersample',8);

[org3, fs3] = audioread('audio_change.wav');
[org1, fs1] = audioread('audio_change1.wav');
[org2, fs2] = audioread('audio_change2.wav');

subplot(2,3,1)
stem(org)
title('Original Waveform')
axis([8540 8610 -0.15 0.15])

subplot(2,3,2)
stem(change1);
title('Changed Waveform by half')
axis([8540/2 8610/2 -0.15 0.15]);

subplot(2,3,3)
stem(change2)
title('Changed Waveform by 4410hz')
axis([8540/5 8610/5 -0.15 0.15]);

subplot(2,3,4)
stem(org3)
title('Original Waveform & Bit/Sample = 8bit')
axis([8540 8610 -0.15 0.15])

subplot(2,3,5)
stem(org1)
title('Changed Waveform by half & Bit/Sample = 8bit')
axis([8540/2 8610/2 -0.15 0.15])

subplot(2,3,6)
stem(org2)
title('Changed Waveform by 4410hz & Bit/Sample = 8bit')
axis([8540/5 8610/5 -0.15 0.15])


sgt = sgtitle('Change the sampling frequency & Bit/Sample = 8bit');
sgt.FontSize = 15;
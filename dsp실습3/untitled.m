clc; clear;

[org,fr] = audioread('audio_file.wav');

Lpf = [1/4, 1/2, 1/4];
Hpf = [1/4, 1/2, 1/4];
padding_org = [0;org;0];
s_size = size(org,1);

Lpf_org = zeros(s_size,1);
Hpf_org = zeros(s_size,1);

for i = 1:s_size
    tmp = Lpf(1)*padding_org(i) * Lpf(2)*padding_org(i+1) + Lpf(3)*padding_org(i+2);
    Lpf_org(i) = tmp;
    
    tmp = Hpf(1)*padding_org(i) -Hpf(2)*padding_org(i+1) + Hpf(3)*padding_org(i+2);
    Hpf_org(i) = tmp;
    
end


subplot(3,1,1);
plot(org);
title('Origin Signal');
subplot(3,1,2);
plot(Lpf_org);
title('LPF Signal');
subplot(3,1,3);
plot(Hpf_org);
title('HPF Signal');
audiowrite('audio_file_lpf.wav',Lpf_org, fr,'Bitspersample',16);
audiowrite('audio_file_hpf.wav',Hpf_org, fr,'Bitspersample',16);
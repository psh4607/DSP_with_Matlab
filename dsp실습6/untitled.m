clc; clear;

[org, fr] = audioread('audio_file.wav');

org_c = [[0;0;];org];
org_n = [0;org;0];

h = [1/4 1/2 1/4];

len = length(org);

y_c = zeros(len, 1);
y_n = zeros(len, 1);

for i = 1:len
    y_c(i) = h(3)*org_c(i) + h(2)*org_c(i+1) + h(1)*org_c(i+2);
end

for i = 1:len
    y_n(i) = h(3)*org_n(i) + h(2)*org_n(i+1) + h(1)*org_n(i+2);
end

subplot(3,1,1)
plot(org)
axis([4540 4590 -0.002 0.002])
xlabel('n')
ylabel('origin')
title('Original Signal')

subplot(3,1,2)
plot(y_c)
axis([4540 4590 -0.002 0.002])
xlabel('y_c')
ylabel('y_c[n]')
title('Causal filtered Signal')

subplot(3,1,3)
plot(y_n)
axis([4540 4590 -0.002 0.002])
xlabel('y_n')
ylabel('y_n[n]')
title('Causal filtered Signal')

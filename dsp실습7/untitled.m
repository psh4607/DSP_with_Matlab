clc; clear;

f = ones(1,20);
h = 1:-0.05:0.05;

l_f = length(f);
l_h = length(h);

len = l_f + l_h -1;
z = zeros(1,len);

% 왜 컨볼루션 함수를 쓰지 않으면 이렇게 코드가 나오는지 레포트에 쓰기
for i = 1 : l_f
   for t = i : i + l_h -1 
        z(t) = z(t) + h(t-i+1)*f(i);
   end
end

% matlab 내장 convoltion 함수
u = conv(f,h);

subplot(4,1,1)
stem(f)
axis([-10 30 0 2])
title('f Signal')
subplot(4,1,2)
stem(h)
axis([-10 30 0 2])
title('h Signal')
subplot(4,1,3)
stem(z)
axis([-10 50 0 15])
title('Convolution without conv func')
subplot(4,1,4)
stem(u)
axis([-10 50 0 15])
title('Convolution with conv func')
clc; clear; 

n = 0:1:100;

subplot(5,2,1)
w = 0; 
y = cos(w*n);
stem(y)
title(['w_0 = ',num2str(w)]);

subplot(5,2,2)
w = pi/4; 
y = cos(w*n);
stem(y)
title(['w_0 = ',num2str(w)]);

subplot(5,2,3)
w = 2*pi/4; 
y = cos(w*n);
stem(y)
title(['w_0 = ',num2str(w)]);

subplot(5,2,4)
w = 3*pi/4; 
y = cos(w*n);
stem(y)
title(['w_0 = ',num2str(w)]);

subplot(5,2,5)
w = pi; 
y = cos(w*n);
stem(y)
title(['w_0 = ',num2str(w)]);

subplot(5,2,6)
w = 5*pi/4; 
y = cos(w*n);
stem(y)
title(['w_0 = ',num2str(w)]);

subplot(5,2,7)
w = 6*pi/4; 
y = cos(w*n);
stem(y)
title(['w_0 = ',num2str(w)]);

subplot(5,2,8)
w = 7*pi/4; 
y = cos(w*n);
stem(y)
title(['w_0 = ',num2str(w)]);

subplot(5,2,9)
w = 8*pi/4; 
y = cos(w*n);
stem(y)
title(['w_0 = ',num2str(w)]);

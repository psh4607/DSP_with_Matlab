clc; clear;
syms a b r c t w

F = 1/(1+r^2*c^2*w^2)*2*b/(b^2+w^2);
sympref('FourierParameters',[1 1]);
ifourier(F,w,t)

ifourier(1,w,t)
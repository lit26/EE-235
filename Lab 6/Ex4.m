% FILE: Ex4.m
% NAME: Tianning Li
% DESCRIPTION: Decoding a Morse Code Message

% Clear all variables and close all windows
clear all; close all; clc;

load Ex4.mat
figure;
b = [2*10^9];
a = [240 3*10^4 2.2*10^6 10^8 2*10^9];
for i = 1:3
    if i == 1
        c = cos(1000*t);
    elseif i == 2
        c = cos(2000*t);
    elseif i == 3
        c = cos(3000*t);
    end
    z = y.*c;
    xr = lsim(b,a,z,t);
    subplot(3,1,i);
    plot(t,xr)
    xlabel('t(s)')
    ylabel('xr(t)')
    str = ['Message m', num2str(i), '(t)'];
    title(str)
end
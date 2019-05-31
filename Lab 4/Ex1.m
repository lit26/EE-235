% FILE: Ex1.m
% NAME: Tianning Li
% DESCRIPTION: Convolution of Two Signals

% Clear all variables and close all windows
clear all; close all; clc;

Fs = 8000;
n=@(t) Fs*t+1;
x1 = ones(n(1),1);
x0 = -1*x1;
y1 = conv(x1,x1)/Fs;
y0 = conv(x1,x0)/Fs;
t_y = (0:length(y1) - 1) * (1/Fs);

figure;
subplot(2,1,1);
plot(t_y,y1);
xlabel('t');
ylabel('y_1');
title('y_1 vs. t_y');
subplot(2,1,2);
plot(t_y,y0);
xlabel('t');
ylabel('y_0');
title('y_0 vs. t_y');

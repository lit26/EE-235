% FILE: Ex2.m
% NAME: Tianning Li
% DESCRIPTION: Convolution and Correlation

% Clear all variables and close all windows
clear all; close all; clc;

load CommsSignals.mat
y1 = conv(x1,x1)/Fs;
y1_corr = y1(length(x1))
y0 = conv(x1,x0)/Fs;
y0_corr = y0(length(x1))

load Noise.mat
r = x1 + n;
t_r = (0:(length(r)-1)) * (1/Fs);

figure();
subplot(2,1,1);
plot(t_r, r);
xlim([0,2]);
title('r(t) vs t');
xlabel('t(s)');
ylabel('Amp');

yr1 = conv(r, x1)/Fs;
yr0 = conv(r, x0)/Fs;
t_yr = (0:(length(yr1)-1)) * (1/Fs);
subplot(2,1,2);
plot(t_yr, yr1,'m',t_yr, yr0,'r');
legend({'yr1', 'yr0'});
title('yr(t) vs t');
xlabel('t(s)');
ylabel('Amp');
yr1_corr = yr1(length(x1))
yr0_corr = yr0(length(x0))

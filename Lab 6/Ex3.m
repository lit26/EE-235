% FILE: Ex3.m
% NAME: Tianning Li
% DESCRIPTION: Amplitude Demodulation

% Clear all variables and close all windows
clear all; close all; clc;
load Ex3.mat

% Generate output of the z(t)
z = y.*cos(500*t);
N = 8192;
z_fft = fftshift(fft(z,N));
z_abs = abs(z_fft);
period = 2*pi*Fs/N;
w = (-N/2:(N/2)-1)*period;
figure
subplot(2,1,1)
plot(t,z)                   %plot z(t)
title('Signal of z(t)')
ylabel('z(t)')
xlabel('t(s)')
subplot(2,1,2)
plot(w,z_abs)               %plot Z(jw)
title('Signal of Z(jw)')
ylabel('z\_abs(jw)')
xlabel('w(rad/s)')
xlim([-1500,1500])
ylim([0,10000])

% Generate filter H(jw) using Isim
b = [2*10^9];
a = [240 3*10^4 2.2*10^6 10^8 2*10^9];
xr = lsim(b,a,z,t);
xr_fft = fftshift(fft(xr,N));
xr_abs = abs(xr_fft);
figure
subplot(2,1,1)
plot(t,xr)
title('Signal of xr(t)')
xlabel('t(s)')
ylabel('xr(t)')
subplot(2,1,2)
plot(w,xr_abs)
title('Signal of XR(jw)')
ylabel('xr\_abs(jw)')
xlabel('w(rad/s)')
xlim([-1500,1500])
ylim([0,10000])
xr_abs = abs(xr_fft);
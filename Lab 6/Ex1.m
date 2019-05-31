% FILE: Ex1.m
% NAME: Tianning Li
% DESCRIPTION: Filtering

% Clear all variables and close all windows
clear all; close all; clc;

Fs = 10;
t = 0:0.1:500;
x = cos(0.1*t);
N = 8192;
x_fft = fftshift(fft(x,N));
x_abs = abs(x_fft);
period = 2*pi*Fs/N;
w = (-N/2:(N/2)-1)*period;

figure
subplot(2,2,1)
plot(t,x)                   % Plot x(t)
title('Signal of x(t)')
xlabel('t(s)')
ylabel('x')
xlim([100,400])
ylim([-2,2])
subplot(2,2,2)
plot(w,x_abs)               % Plot X(jw)
title('Signal of X(jw)')
xlabel('w(rad/s)')
ylabel('x\_abs(jw)')
xlim([-0.5,0.5])

% Generate filter H(jw)
H_fft = 3./(3+j*w);
H_abs = abs(H_fft);
figure
plot(w,H_abs)               % Plot H(jw)
title('Signal of H(jw)')
xlabel('w')
ylabel('H\_abs(jw)')
xlim([-25,25])

y_fft = x_fft.*H_fft;
y_ifft = ifft(fftshift(y_fft),N);
y = real(y_ifft);
t_y = (0:length(y)-1) * (1/Fs);
figure(1)
subplot(2,2,3)
plot(t_y,y)                 % Plot y(t)
title('Signal of y(t)')
xlabel('t\_y(s)')
ylabel('y(t)')
xlim([100,400])
ylim([-2,2])
% Generate filter H(jw) using Isim
b = [3];
a = [1 3];
y = lsim(b,a,x,t);
figure(1)
subplot(2,2,4)
plot(t,y)                   % Plot y(t)
title('Signal of y(t) using filter coefficient)')
xlabel('t\_y(s)')
ylabel('y(t)')
xlim([100,400])
ylim([-2,2])
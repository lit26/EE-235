% FILE: Ex2.m
% NAME: Tianning Li
% DESCRIPTION: Amplitude Modulation

% Clear all variables and close all windows
clear all; close all; clc;

load MorseCode.mat
t_morse = (0:length(dash)-1) * (1/Fs);
% Plot dash and dot signals
figure
subplot(2,1,1)
plot(t_morse,dash)
title('dash vs. t\_morse')
xlabel('t\_morse(s)')
ylabel('dash')
ylim([-40,40])
subplot(2,1,2)
plot(t_morse,dot)
title('dot vs. t\_morse')
xlabel('t\_morse(s)')
ylabel('dot')
ylim([-40,40])

% Plot the signals x(t) and x_abs(t)
x = [dash dot dash dot];
t = (0:length(x)-1)*(1/Fs);
N = 8192;
x_fft = fftshift(fft(x,N));
x_abs = abs(x_fft);
period = 2*pi*Fs/N;
w = (-N/2:(N/2)-1)*period;
figure
subplot(2,1,1)
plot(t,x)
title('Signal of x(t)')
xlabel('t(s)')
ylabel('x(t)')
subplot(2,1,2)
plot(w,x_abs)
title('Signal of X(jw)')
xlabel('w(rad/s)')
ylabel('x\_abs(jw)')
xlim([-1000,1000])

% Plot the signals y(t) and y_abs(jw)
y = x.*cos(500*t);
N = 8192;
y_fft = fftshift(fft(y,N));
y_abs = abs(y_fft);
figure
subplot(2,1,1)
plot(t,y)
title('Signal of y(t)')
xlabel('t(s)')
ylabel('y(t)')

subplot(2,1,2)
plot(w,y_abs)
title('Signal of Y(jw)')
xlabel('w(rad/s)')
ylabel('y\_abs(jw)')
xlim([-1000,1000])
ylim([0,10000])

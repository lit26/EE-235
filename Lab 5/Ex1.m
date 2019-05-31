% FILE: Ex1.m
% NAME: Tianning Li
% DESCRIPTION: Identifying Frequency Contentof a Signal

% Clear all variables and close all windows
clear all; close all; clc;

Fs = 8000;
t = 0: 1/Fs : 0.25-1/Fs;
d0 = sin(2*pi*941*t) + sin(2*pi*1336*t);
sound(d0, Fs);
pause(1);
sound(d0, Fs);
figure;
subplot(2,1,1);
plot(t, d0);
xlabel('t(s)');
ylabel('d0(t)');
title('Signal d0(t)');

N = 4096;
D0_fft = fftshift(fft(d0, N));
D0_abs = abs(D0_fft);
period = 2*pi*Fs/N;
w = (-N/2:(N/2)-1)*period;
subplot(2,1,2);
plot(w, D0_abs);
xlim([-9000 9000]);
ylim([0 1000])
xlabel('frequency w(rad/s)');
ylabel('D0 abs(w)');
title('Signal D0 abs(w) VS w');

n = find(D0_abs > 900);
index_tone0 = zeros(1, length(n));
for i = 1:length(n)
      index_tone0(1,i)= -1*N/2*period + (n(1,i)-1)*period;
end
freq_tone0 = index_tone0 ./ (2 * pi)





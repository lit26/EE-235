% FILE: Ex3.m
% NAME: Tianning Li
% DESCRIPTION: Identifying Frequency Contentof a Signal

% Clear all variables and close all windows
clear all; close all; clc;
load phonenum.mat
t_x = (0:(length(x)-1)) * (1/Fs);
plot(t_x,x);
xlabel('t');
ylabel('x');
title('x vs. t_x');
phone_num = zeros(11,1);
figure;
for i=1:length(phone_num)
    start_index = 0.5*(i-1)*Fs+1;
    end_index = 0.5*i*Fs;
    signal = x(1,start_index:end_index);
    phone_num(i) = classify(signal, Fs);
    t_signal = (0:(length(signal)-1)) * (1/Fs);
    str = ['Number = ', num2str(phone_num(i))];
    subplot(3,4,i);
    plot(t_signal,signal);
    xlabel('t(s) signal');
    ylabel('x(t)');
    title(str);
end

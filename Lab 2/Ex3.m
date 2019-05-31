% FILE: Ex3.m
% NAME: [Tianning Li]
% DESCRIPTION: Recovering Popular Audio File
clear all; close all; clc;
load s1.mat;
t_y = (0:length(y)-1)*(1/Fs);
figure;
subplot(2,1,1);
plot(t_y,y);
xlabel("t(s)");
ylabel("No. of Sound Elements:y(t)");
title("Plot of sound signal");
% scale and shift the function.
[y1, t_y1] = timescale(y, Fs, 0.5);     
[y2, t_y2] = timeshift(y1, Fs, -0.5);

% shift and scale the function.
[y3, t_y3] = timeshift(y, Fs, -2);
[y4, t_y4] = timescale(y3, Fs, 2); 

subplot(2,1,2);
plot(t_y2,y2);
xlabel("t(s)");
ylabel("No. of Sound Elements:y(t)");
title("Plot of sound signal after transformation");
sound(y2,Fs);


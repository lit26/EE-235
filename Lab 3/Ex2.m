% FILE: Ex2.m
% NAME: Tianning Li
% DESCRIPTION: Revisiting Time Delay Transformation

% Clear all variables and close all windows
clear all; close all; clc;

% load data
load train.mat;
x=y;
t_x = (0:length(x) - 1) * (1/Fs);

% transformation to=1
to=1;
n=@(t) Fs*t+1;
h1 = zeros(n(4),1);
h1(n(to),1)=1;
t_h1 = (0:length(h1) - 1) * (1/Fs);
y1 = conv(x,h1);
t_y1 = (0:length(y1) - 1) * (1/Fs);

figure;
subplot(3,1,1);
plot(t_x,x);
xlim([0 6]);
ylim([-2 2]);
xlabel("t(s)");
ylabel("x(t)");
title("No. of Sound Elements:x(t)");
subplot(3,1,2);
plot(t_h1,h1);
xlim([0 6]);
ylim([-2 2]);
xlabel("t(s)");
ylabel("h1(t)");
title("No. of Sound Elements:h1(t)");
subplot(3,1,3);
plot(t_y1,y1);
xlim([0 6]);
ylim([-2 2]);
xlabel("t(s)");
ylabel("y1(t)");
title("No. of Sound Elements:y(t)");

% transformation to=3
to=3;
n=@(t) Fs*t+1;
h2 = zeros(n(4),1);
h2(n(to),1)=1;
t_h2 = (0:length(h2) - 1) * (1/Fs);
y2 = conv(x,h2);
t_y2 = (0:length(y1) - 1) * (1/Fs);

figure;
subplot(3,1,1);
plot(t_x,x);
xlim([0 6]);
ylim([-2 2]);
xlabel("t(s)");
ylabel("x(t)");
title("No. of Sound Elements:x(t)");
subplot(3,1,2);
plot(t_h2,h2);
xlim([0 6]);
ylim([-2 2]);
xlabel("t(s)");
ylabel("h2(t)");
title("No. of Sound Elements:h2(t)");
subplot(3,1,3);
plot(t_y2,y2);
xlim([0 6]);
ylim([-2 2]);
xlabel("t(s)");
ylabel("y2(t)");
title("No. of Sound Elements:y2(t)");



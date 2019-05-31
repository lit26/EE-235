% FILE: Ex1.m
% NAME: Tianning Li
% DESCRIPTION: Implementing a Unit Impulse in Matlab

% Clear all variables and close all windows
clear all; close all; clc;

% Create delta(t) impulse
Fs = 8000;
n=@(t) Fs*t+1;
t1 = 5;
d1 = zeros(n(t1),1);
n_in1 = 0;
index = n(n_in1);
d1(index) = 1;
t = (0:length(d1) - 1) * (1/Fs);

% Create delta(t-3) impulse
d2 = zeros(n(t1),1);
n_in1 = 3;
index = n(n_in1);
d2(index,1) = 1;

% Create 2delta(t-4) impulse
d3 = zeros(n(t1),1);
n_in2 = 4;
index = n(n_in2);
d3(index) = 2;

figure;
hold on;
plot(t,d1,'blue');
plot(t,d2,'red');
plot(t,d3,'magenta');
xlim([-1 6]);
ylim([0 3]);
xlabel("t(s)");
ylabel("x(t)");
title("Signals of impulse function");
legend("d(t)","d(t-3)","2d(t-4)");

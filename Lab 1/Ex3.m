% FILE: Ex3.m
% NAME: [Tianning Li]
% DESCRIPTION: Matlab Plotting Basics

% Clear all variables and close all windows
clearvars;
close all;

% PART A
Fs = 5;
t = -2:1/Fs:4;
x = 2-t;
figure;
subplot(1,2,1);
plot(t,x);
xlim([-5,5]);
ylim([-5,5]);
xlabel("t");
ylabel("X(t)");
grid on;

%PART B
Fs = 5;
t = -2:1/Fs:4;
x = -0.5*t.^2;
subplot(1,2,2);
plot(t,x);
xlim([-5,5]);
ylim([-5,5]);
xlabel("t");
ylabel("X(t)");
grid on;


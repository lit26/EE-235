% FILE: Ex2.m
% NAME: Tianning Li
% DESCRIPTION: ClassifyingTouch-Tone Telephone Signals

% Clear all variables and close all windows
clear all; close all; clc;

Fs = 8000;
t = 0: (1/Fs) : 0.25-(1/Fs);
d4 = sin(2*pi*770*t) + sin(2*pi*1209*t);
d5 = sin(2*pi*770*t) + sin(2*pi*1336*t);
d8 = sin(2*pi*852*t) + sin(2*pi*1336*t);
d9 = sin(2*pi*852*t) + sin(2*pi*1447*t);
t_z = 0: (1/Fs) : 0.25;
add_z = zeros(1,length(t_z)-length(t));
d4_z = [d4 add_z];
d5_z = [d5 add_z];
d8_z = [d8 add_z];
d9_z = [d9 add_z];
num = classify(d4_z,8000)
num = classify(d5_z,8000)
num = classify(d8_z,8000)
num = classify(d9_z,8000)
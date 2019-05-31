% FILE: Ex4.m
% NAME: [Tianning Li]
% DESCRIPTION: Sound Files

% Clear all variables and close all windows
clearvars;
close all;

% PART A
load chirp.mat
chirpSound = y;
chirpFs = Fs;
load gong.mat
gongSound = y;
gongFs = Fs;

% PART B
t_chirp = (0:length(chirpSound)-1)*(1/chirpFs);
t_gong = (0:length(gongSound)-1)*(1/gongFs);

% PART C
figure;
subplot(2,1,1);
plot(t_chirp,chirpSound);
xlabel("t(s)");
ylabel("No. of Sound Elements:y(t)");
title("Plot of chirp sound signal");
subplot(2,1,2);
plot(t_gong,gongSound);
xlabel("t(s)");
ylabel("No. of Sound Elements:y(t)");
title("Plot of gong sound signal");

% PART D
sound(chirpSound,chirpFs);
pause(4);
sound(gongSound,gongFs);
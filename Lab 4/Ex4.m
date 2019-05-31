% FILE: Ex4.m
% NAME: Tianning Li
% DESCRIPTION: Deciphering Received Message in Digital Communication System

% Clear all variables and close all windows
clear all; close all; clc;

load CommsSignals.mat;
load Ex4.mat;
t_r = (0:(length(r)-1)) * (1/Fs);
figure();
plot(t_r, r);
title('r(t) vs t');
xlabel('t(s)');
ylabel('Amp');
rm_rows = size(rm,1);
message_bits = zeros(1, rm_rows);
for  j = 1:rm_rows
    signal = rm(j,:);
    symbol = decode(signal, (length(signal)-1)/Fs, Fs, x0, x1);
    message_bits(j) = symbol;
end

%output
message_bits
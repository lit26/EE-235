% FILE: Ex3.m
% NAME: Tianning Li
% DESCRIPTION: Convolution and Correlation

% Clear all variables and close all windows
clear all; close all; clc;

% Test the decode function
load CommsSignals.mat
s1 = decode(x1, (length(x1)-1)/Fs, Fs, x0, x1)
s0 = decode(x0, (length(x0)-1)/Fs, Fs, x0, x1)
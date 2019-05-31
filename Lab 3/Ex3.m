% FILE: Ex3.m
% NAME: Tianning Li
% DESCRIPTION: Audio FileRealignment

% Clear all variables and close all windows
clear all; close all; clc;

% load data
load s3.mat;
n=@(t) Fs*t+1;
h1 = zeros(n(4),1);
h1(n(1),1)=1;
h2 = zeros(n(4),1);
h2(n(0),1)=10;
h3 = zeros(n(4),1);
h3(n(2),1)=1;
y1 = conv(x1,h1);
y2 = conv(x2,h2);
y3 = conv(x3,h3);

if (length(y1)>length(y2) && length(y1)>length(y3))
    z2 = zeros(length(y1)-length(y2),1);
    z3 = zeros(length(y1)-length(y3),1);
    y2 = [y2; z2];
    y3 = [y3; z3];
elseif (length(y2)>length(y1) && length(y2)>length(y3))
    z1 = zeros(length(y2)-length(y1),1);
    z3 = zeros(length(y2)-length(y3),1);
    y1 = [y1; z1];
    y3 = [y3; z3];
elseif (length(y3)>length(y1) && length(y3)>length(y2))
    z1 = zeros(length(y3)-length(y1),1);
    z2 = zeros(length(y3)-length(y2),1);
    y1 = [y1; z1];
    y2 = [y2; z2];
end
y=y1+y2+y3;
t_y = (0:length(y) - 1) * (1/Fs);
plot(t_y,y);
xlim([0 5]);
ylim([-2 2]);
xlabel("t(s)");
ylabel("y(t)");
title("No. of Sound Elements:y(t)");
sound(y,Fs);

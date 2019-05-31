load train.mat;
t_y = (0:length(y)-1)*(1/Fs);
plot(t_y,y);
xlabel("t(s)")
ylabel("No. of Sound Elements:y(2t)");
title("Plot of original train sound signal");
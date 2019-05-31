% EXAMPSCALE [Plot and play original train sound signal and scaled train sound signal]
% USAGE:[ExAmpScale(3) plays original train sound sigal and scaled train sound signal
%        with scale factor 3 and have 4 sec pause between]
% AUTHOR:[TIANNING LI]
function ExAmpScale(A)
    % PART A
    load train.mat;
    t_y = (0:length(y)-1)*(1/Fs);
    % PART B
    yScaled = A.*y;
    % PART C
    close all;
    figure;
    subplot(1,2,1);
    plot(t_y,y);
    xlabel("t(s)");
    ylabel("No. of Sound Elements:y(t)");
    title("Plot of original train sound signal");
    ylim([-3,3]);
    subplot(1,2,2);
    plot(t_y,yScaled);
    xlabel("t(s)");
    ylabel("No. of Sound Elements:y(t)");
    title("Plot of scaled train sound signal ("+A+")");
    ylim([-3,3]);
    % PART D
    sound(y,Fs);
    pause(4);
    sound(yScaled,Fs);
end
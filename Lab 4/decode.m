% FILE: decode.m
% NAME: Tianning Li
% DESCRIPTION: decode function
function [s] = decode(x, d, Fs, x0, x1)
    % compute the correlation
    y0_corr = conv(x, x0) / Fs;
    y1_corr = conv(x, x1) / Fs;
    % extract the value of the convolution output at index
    y0 = y0_corr(d*Fs + 1);
    y1 = y1_corr(d*Fs + 1);
    if (y1 > y0)
        s = 1; % high signal
    else
        s = 0; % low signal
    end
end

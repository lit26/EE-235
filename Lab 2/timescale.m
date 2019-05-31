% TIMESCALE Perform a time scale operation on x (sampled at Fs) by
% factor "a".
% USAGE: [y1, t1] = timescale(signal, signal_Fs, 2);
% AUTHOR: Eldridge Alcantara
function [y, t] = timescale(x, Fs, a)

    % Get numerator and denominator of scaling factor
    [n, d] = rat(a);
    
    % Call resampling function to rescale time axis
    y = resample(x, d, n);
    
    % Compute time samples vector
    t = (0:length(y)-1) * (1/Fs);

end
% FILE: classify.m
% NAME: Tianning Li
% DESCRIPTION: ClassifyingTouch-Tone Telephone Signals

function [num] = classify(x, Fs)
    TF = [941 1336;
          697 1209;
          697 1336;
          697 1477;
          770 1209;
          770 1336;
          770 1477;
          852 1209;
          852 1336;
          852 1477];
    N = 4096;
    X_fft = fftshift(fft(x, N));
    X_abs = abs(X_fft);
    period = 2*pi*Fs/N;
    w = (-N/2:(N/2)-1)*period;
    n = find( X_abs > 900);
    index_tone = zeros(1, length(n));
    for i = 1:length(n)
        index_tone(1,i)= -1*N/2*period + (n(1,i)-1)*period;
    end
    freq_tone = index_tone./(2*pi);
    pos_freq = freq_tone(1, 3:4);

    total_error = zeros(10,1);
    for i = 1:10
        abs_error = [abs(pos_freq(1,1)-TF(i,1)) abs(pos_freq(1,2)-TF(i,2))];
        total_error(i,1) = abs_error(1,1) + abs_error(1,2);
    end
    [min_e, index_min_e] = min(total_error);
    num = index_min_e -1;
end
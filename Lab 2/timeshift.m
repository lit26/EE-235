% ADD FUNCTION HEADER COMMENTS
function [y, t] = timeshift(x, Fs, to)

    % Perform time shifting operation and produce sound vector y
    ny = ceil(((abs(to)) * Fs) + 1);
    y1 = zeros(ny, 1);
    if to >= 0          % Time shift right
        y = [y1;x];
        t = (0:length(y) - 1) / Fs;   
        % FILL IN LINES OF CODE HERE
        
    else                % Time shift left
        y = [x;y1];
        t = (0:length(y) - 1) / Fs + to;
        % FILL IN LINES OF CODE HERE
        
    end
    
    % Compute the corresponding time samples vector t for sound vector y
    % FILL IN LINE OF CODE HERE
    
end
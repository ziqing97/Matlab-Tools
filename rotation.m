function[R]=rotation(alpha,achse)
    % Einheit: Radiant
    if achse == 'x'
        R=[1,0,0;0,cos(alpha),sin(alpha);0,-sin(alpha),cos(alpha)];
    elseif achse == 'y'
        R=[cos(alpha),0,-sin(alpha);0,1,0;sin(alpha),0,cos(alpha)];
    elseif achse == 'z'
        R=[cos(alpha),sin(alpha),0;-sin(alpha),cos(alpha),0;0,0,1];
    else
        error('Fehler');
    end
end
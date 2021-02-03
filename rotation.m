function[R]=rotation(alpha,achse)
% 3-D rotation, alpha is the ratationsangle in radiant
% aches are axis, aound which the rotation happens
% the output R is the matrix for the rotation. 
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
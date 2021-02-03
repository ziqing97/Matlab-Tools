function mtable2latex(A)
% Ziqing Yu
% first edition created on 02/02/2021

% this script generate a Latex Code to present A in a table 
% A is a matlab matrix. 

% if you want to change the presentation format, the line 17 and 21 can be
% customized
A = A';
[n,m] = size(A);
fprintf('\n')
len=length(A);
for i=1:m
    for j=1:n
        pos=(i-1)*n+j;
        if j<=len
            if j==n
                 fprintf('%1.3f & \\\\ \\hline \n',A(pos));
            else
                 fprintf('%1.3f &',A(pos));
            end
        else
            if j==n
                 disp('\\  \hline');
            else
                 fprintf('&');
            end
        end
    end
end
end
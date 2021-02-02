function mtable2latex(A)
% this script generate a latex Code to present A in a table 
% A is a matlab matrix. 

% if you want to change the presentation format, the line 17 can be
% customized

[m,n] = size(A);
fprintf('\n')
len=length(A);
for i=1:m
    for j=1:n
        pos=(i-1)*n+j;
        if j<=len
            if j==n
                 disp([num2str(A(pos)),'\\ \hline']);
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
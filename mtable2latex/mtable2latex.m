function mtable2latex(body,line_title,column_title,format)
% Ziqing Yu
% first edition created on 02/02/2021
% last edited on 08/11/2021

% this script generate a Latex Code to present a table 

% body: a matrix with m*n
% line_title: a cell with m*1
% column_title: a cell with n*1
% format: data output format

[m,n] = size(body);
if m ~= length(line_title) || n ~= length(column_title)
    error('argument size do not match!')
end

fprintf('\\begin{table}[htbp] \n\\centering \n')
fprintf('\\begin{tabular}{')
for i=1:n+1
    fprintf('|c')
end
fprintf('|}\n')
fprintf('\\hline\n')

for i = 1:n
    if i == 1
        fprintf('  & ')
        fprintf(column_title{i})
        fprintf(' & ')
    elseif i < n && i > 1
        fprintf(column_title{i})
        fprintf(' & ')
    elseif i == n
        fprintf(column_title{i})
        fprintf(' \\\\ \\hline\n')
    end
end
for i=1:m
    fprintf(line_title{i})
    fprintf(' & ')
    for j=1:n
        if j < n
            fprintf(format,body(i,j))
            fprintf(' & ')
        elseif j == n
            fprintf(format,body(i,j))
            fprintf(' \\\\ \\hline\n')
        end
    end
end
fprintf('\\end{tabular}\n\\end{table}\n')

end
%% example for mtable2latex function
% Author Ziqing Yu
clc
test_matrix = [1,2,3,4;5,6,7,8;8,6,5,7;2,5,6,7;5,8,6,8];
line = {'a','b','c','d','e'};
column = {'1','2','3','4'};
mtable2latex(test_matrix,line,column,'%1.3f')

fprintf('\n')

test_matrix = [1,2,3,4;5,6,7,8;8,6,5,7;2,5,6,7;5,8,6,8]';
column = {'a','b','c','d','e'};
line = {'1','2','3','4'};
mtable2latex(test_matrix,line,column,'%1.5f')
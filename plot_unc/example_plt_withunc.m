%% normal case
a1  = linspace(0,2*pi,100);
b1 = sin(a1);
uc1 = b1/10;
figure
plt_withunc(a1,b1,uc1)

%% uc is a single value
a1  = linspace(0,2*pi,100);
b1 = sin(a1);
uc1 = 0.1;
figure
plt_withunc(a1,b1,uc1)

%% NaN exist in b
a1  = linspace(0,2*pi,100);
b1 = sin(a1);
b1(50) = NaN;
b1(78) = NaN;
uc1 = b1/10;
figure
plt_withunc(a1,b1,uc1)
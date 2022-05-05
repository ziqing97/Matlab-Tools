function[phi1,lambda,h1]=cart2ellip(X,Y,Z)
%
a = 6.3781370e6;
e = 0.011068213498220;  % in the future should be extracted from ephemeris
%
epsilon_h = 0.001;
epsilon_phi = pi / (3600 * 180);

lambda = atan2(Y,X);

p = sqrt(X^2 + Y^2);
h0 = 0;
phi0 = atan2(Z, (p * (1 - e^2)));
N0 = a / (1 - e^2 * sin(phi0)^2);
h1 = p / cos(phi0) - N0;
phi1 = atan2(Z * (N0 + h1), (p * (N0 * (1 - e^2) + h1)));

while abs(h1 - h0) > epsilon_h || abs(phi1 - phi0) > epsilon_phi
    phi0 = phi1;
    h0 = h1;
    N0 = a / sqrt(1 - e^2 * sin(phi0)^2);
    h1 = p / cos(phi0) - N0;
    phi1 = atan2(Z * (N0 + h1), (p * (N0 * (1 - e^2) + h1)));
end
end
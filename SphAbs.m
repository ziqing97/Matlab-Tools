function[SA] = SphAbs(lambda1,lambda2,phi1,phi2)
% This function calculatates the spheric distance of 2 points in unit sphere
%
% Ziqing Yu
%
% input: lambda1, lambda2, phi1, phi2: longitude and latitude of both
% points (in radiant)
% output: spheric distance of 2 points in unit sphere (in radiant)
SA = acos(sin(phi1) * sin(phi2) + cos(phi1) * cos(phi2) * cos(lambda1 - lambda2));
end
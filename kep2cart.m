% This function transform kepler elements to cartesian koordiantes
% Ziqing Yu
% input: a  semimajor axis
%         e  eccentricity
%         I  inclination
%         OMEGA  longitude of teh ascending node
%         omega  argument of the periapsis
%         M  mean anomaly
%
% The input should be in skalar or vektors with same size
%
% output: r  position  
%        v  velocity 
function[r,v]=kep2cart(a,e,I,OMEGA,omega,M)
    GM=3.986005e14;
    E0=M;
    EK=M+e*sin(E0);
    while abs(EK-E0)>10^-12
        E0=EK;
        EK=M+e*sin(E0);
    end 
    rx_f=a*(cos(EK)-e);
    ry_f=a*sqrt(1-e^2)*sin(EK);
    rz_f=zeros(1,length(rx_f));
    n=sqrt(GM/a^3);
    k=n*a./(1-e*cos(EK));
    vx_f=k.*(-sin(EK));
    vy_f=k.*(sqrt(1-e^2)*cos(EK));
    vz_f=zeros(1,length(rz_f));
    rf=[rx_f;ry_f;rz_f];
    vf=[vx_f;vy_f;vz_f];
    r=rotation(-OMEGA,'z')*rotation(-I,'x')*rotation(-omega,'z')*rf;
    v=rotation(-OMEGA,'z')*rotation(-I,'x')*rotation(-omega,'z')*vf;
end
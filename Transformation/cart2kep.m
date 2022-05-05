% This function transfrom cartesian koordinates to kepler elements
% Ziqing Yu
% input: r  position 3*1 
%        v  velocity 3*1
% output: a  semimajor axis
%         e  eccentricity
%         I  inclination
%         OMEGA  longitude of teh ascending node
%         omega  argument of the periapsis
%         M  mean anomaly
function[a,e,I,OMEGA,omega,M]=cart2kep(r,v)
    GM=3.986005e14;
    %
    L=cross(r,v);
    %
    OMEGA=atan2(L(1),-L(2));
    %
    I=atan2(sqrt(L(1)^2+L(2)^2),L(3));
    %
    rs=sqrt(r(1)^2+r(2)^2+r(3)^2);
    vs=sqrt(v(1)^2+v(2)^2+v(3)^2);
    rs_p=dot(r,v)/rs;
    a=GM*rs/(2*GM-rs*vs^2);
    %
    Ls=sqrt(L(1)^2+L(2)^2+L(3)^2);
    e=sqrt(1-Ls^2/(GM*a));
    %
    E=asin(rs*rs_p/(e*sqrt(GM*a)));
    M=E-e*sin(E);
    %
    p=rotation(I,'x')*rotation(OMEGA,'z')*r';
    u=atan2(p(2),p(1));
    mu=atan2(sqrt(1-e^2)*sin(E),cos(E)-e);
    omega=u-mu;
end
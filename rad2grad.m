function[g,m,s]=rad2grad(r)
r=r/pi*180;
if r>0
    g=floor(r);
    m=floor((r-g)*60);
    s=(r-g-m/60)*3600;
else
    r=-r;
    g=floor(r);
    m=floor((r-g)*60);
    s=(r-g-m/60)*3600;
    g=-g;
    m=-m;
    s=-s;
end
end
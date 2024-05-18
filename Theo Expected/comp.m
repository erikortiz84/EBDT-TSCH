function EE=comp(m,B)
%m: number of network channels
%B: beta value

Teb=4;
A=0.5;

%% Expected time calculation using equation (6)
p=1/m;
ui=floor(B.*m);
Tebi=A*Teb;
ETeb=(0.75*Teb+Teb)/2;
ETebi=(0.75*Tebi+Tebi)/2;

t=0;
E=0;
for i=1:100000
    if i<=ui
        t=i*ETebi;
    else % i>ui
        t=ui*ETebi+(i-ui)*ETeb;       
    end %if
    E=E+p*(1-p)^(i-1)*t;    
end %for

EE=E;
%% Expected time calculation using equation (7)
c=((Teb*(1+0.75)*m)/2)*(A-(A-1)*(1-1/m)^(floor(B*m)))

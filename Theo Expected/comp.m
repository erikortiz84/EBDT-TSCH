function EE=comp(m,B)
%m=16;
Teb=4;
%B=[0.5 0.8 1 1.5 1.8];
A=0.5;

p=1/m;
ui=B.*m;
Tebi=A*Teb;
ETeb=(0.75*Teb+Teb)/2;
ETebi=(0.75*Tebi+Tebi)/2;

t=0;
E=0;
for i=1:10000
    if i<=ui
        t=i*ETebi;
    else % i>ui
        t=ui*ETebi+(i-ui)*ETeb;       
    end %if
    E=E+p*(1-p)^(i-1)*t;    
end %for

EE=E;

a=((ETeb-ETebi)*(1-p)^(ui)+ETebi)/(p)

b=((1-p)^(ui)*(ETebi*p*ui+ETeb))/(p)-(ETebi*(p*ui*(1-p)^(ui)+(1-p)^(ui)-1))/(p)

%c=((EETeb*(1+0.75)*m)/2)*(A-(1-1/m)^(B*m)*(A-1)

c=((Teb*(1+0.75)*m)/2)*(A-(1-1/m)^(B*m)*(A-1))

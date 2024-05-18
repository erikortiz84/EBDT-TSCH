figure(3)
Teb=4;
m=16;
%m=8;
%m=4;

f=@(A,B)((Teb*(1+0.75)*m)/2)*(A-(1-1/m)^(B*m)*(A-1));
%p=fsurf(f,[0.1 0.9 0.1 2]);
p=fmesh(f,[0.1 0.9 0.1 2]);
% p.FaceColor='k';
% p.EdgeColor='interp';
%camlight
xlabel('\alpha');
ylabel('\beta');
zlabel('Theoretical average association time (s)')
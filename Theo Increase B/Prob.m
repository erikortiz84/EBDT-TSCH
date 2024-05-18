function Prob(m)
B=(0.4:0.2:3.2);
% m=8;

u=floor(B.*m);
pn=1/m;

for i=1:length(u)
    p=0;
    for j=1:u(i)
        p=p+pn*(1-pn)^(j-1);
    end %for
    prob(i)=p;
    PP(i)=1-((m-1)/m)^(u(i));
end % for
plot(B,prob,'x');
hold on;
%plot(B,prob,'o');
grid on;
box on;
%title(['Number of networks channels=',num2str(m)]);
%xlabel('\beta');
%ylabel('Probability of join at intensive phase');
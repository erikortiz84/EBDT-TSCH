B=[0 0.5 0.8 1 1.5 1.8];
m=4;

for i=1:length(B)
    E(i)=comp(m,B(i));
end %for

figure(1);
hold on;
plot(B,E,' x');

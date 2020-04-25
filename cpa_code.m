clc; clear all;

%arxika data
x=[4.5 1.5 4.2 3.9 3.1 4.3 4 3 3.5 3.1]

y=[4.4 1.7 4.9 4.2 3.0 4.7 3.6 3.1 3.6 1.9] 

%skelos 1, afairo ton meso oro apo kathe metavliti
x1=x-mean(x)
y1=y-mean(y)

%skelos 2, ypologizo ton pinaka syndiakimansis (Covariance matrix)
%xrisimopoiontas ti synartisi cov gia tis dyo metavlites
C=cov(x1,y1)

%skelos 3, me vasi ton pinaka syndiakimansis, ton C, ypologizo tis idiotimes
%kai idiodianismata sto [V,D]
[V,D]=eig(C)

%gia na elegxo pos einai ontos  C*V = V*D kano thn afairesi katothen kai
%prepei na einai 0 i para poly konta sto 0, sta oria toy ypologistikou
%lathous
C*V - V*D

%skelos 4, optikopoioyme ta apotelesmata
%edo exoume ti dieuthinsi me ti megalyteri diaspora
plot([V(1)+V(3), V(2)+V(4)])
hold on
%edo exoume ti dieuthinsi me ti deyteri megalyteri diaspora
plot([D(4), D(1)])
hold on
%edo exoume ta stoixeia mas
plot(x,y,'.r')
%lezanta 
legend({'V: Largest Variance','D: Second Largest Variance', '[x,y]'},'Location','southeast')
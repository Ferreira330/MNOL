%modelo quadratico -- polinomio grau 2
%reta - polinomio grau 1
clear all
x=[0 1.25 2.5 3.75]
f=[0.260 0.208 0.172 0.145]
[P2,S2] = polyfit(x,f,2) %P2 - coeficientes do polinomio
SQR = S2.normr^2 %calcula a soma do quadrado dos residuos

%%representação do polinomio
novo_x=0:0.01:3.75;
novo_f=polyval(P2,novo_x); %avalia o novo_x em p2
plot(x,f,'o',novo_x,novo_f,'r')
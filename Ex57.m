%%exercicio 57
clear all
x=[1.5 2.0 3.0 4.0];
f=[4.9 3.3 2.0 1.5];

%a) reta p1(x) = -1.2915*x + 6.3153
[P1,S1]=polyfit(x,f,1)
S1.normr^2 %da a soma do quadrado dos residuos - erro

%b) parabola p2(x) = 0.6482*x^2 -4.8678*x + 10.6387
[P2,S2]= polyfit(x,f,2)
S2.normr^2

%c) modelo nao polinomial
[c, RESNORM] = lsqcurvefit(@exerc57, [1,1],x,f)
RESNORM %dá a soma do quadrado dos resíduos - erro
% m(x) = 7.4054/x -0.1175*x

%%representação gráfica
novo_x=1.5:0.05:4;
novo_P1=polyval(P1,novo_x);
novo_P2=polyval(P2,novo_x);
novo_m=exerc57(c,novo_x);
plot(x,f,'o',novo_x,novo_P1,'r',novo_x,novo_P2,'b',novo_x,novo_m,'g')

%função
function [ m ] = exerc57(c,x)
m=c(1)./x+c(2).*x;
end



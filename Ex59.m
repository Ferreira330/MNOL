%polyfit (polinomios de grau 1)
%polyval( estimar um ponto ou vetor num polinomio ou modelo)
%lsqcurvefit (usar sempre nos problemas de polinomios nao lineares)

% -> [P1, S1] = polyfit(x,f,1)
% -> [C, Resnoem] = Pscurvefit(@fun, [1,1],x,f)



clear all

x = [1,3,6,10,12];
f= [122 188 270 160 120];
[c, RESNORM] = lsqcurvefit(@exerc59,[1,1],x,f)

exerc59(c,8)
%%representação grafica
novo_x=1:0.05:12;
novo_f=exerc59(c,novo_x); %avalia os valores de novo_x no modelo
plot(x,f,'o',novo_x,novo_f,'r') %faz o grafico dos pontos e do modelo

%funcao
function [ m ] = exerc59( c,x )
m=c(1).*+c(2).*sin(x); %c(1) significa o 1º valor do vetor c
end

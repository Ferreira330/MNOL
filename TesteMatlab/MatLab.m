% Resolução Teste Modelo Matlab

%%Ex1
%%Equações:
%−5x1 + 3sen(x1) + cos(x2)=0
%4cos(x1) + 2sen(x2)=5x2
%TolFun =10^-1 TolX = 10^-2
%x=(0,0.1)


x0=[0;0.1];
op=optimset('tolfun',1e-1,'tolx',1e-2);
[x,fval,exitflag,output]=fsolve(@exerc1,x0)

%a) Aproximação à solução x(1) = 0.2028701348, x(2) = 1.1484449078 -> com 10 casas decimais
%b) 4 iterações

%Ex 2
%%O preço de uma mercadoria a pronto pagamento (P P ) é de 315e, mas pode ser financiado com uma
%entrada (E) de 91e e 12 (P ) prestações mensais (P M ) de 24e. Calcule a taxa de juro (x) sabendo
%que (1-(1+x)^-P)/x == (PP-E)/PM
%aproximação inicial x1 = 0.04
%TolX = 10−1
op=optimset('tolx',1e-1);
[x,fval,exitflag,output] =fsolve(@exerc2,0.04,op)

%a) Exitflag = 1, método convergiu
%b) 2 iterações
%c) x = 0-040954076559 com format long

%%Ex 3
x=[1.5 2 2.2 3 3.8 4];
f=[4.9 3.3 3 2 1.75 1.5];
%c) estimar f(2.5) usando spline cubica com declive -2 e 3 nos extremos
sc = spline(x, [-2 f 3], 2.5) 
%d) segmento da spline
%para ver os segmentos, fazer:
sc = spline(x, [-2 f 3])
sc.coefs
%e) estimar x=3.5 com reta segundo minimos quadrados
[P1,S1]=polyfit(x,f,1)
val=polyval(P1,3.5)
%e) resp: 1.8633
%f) reta (p1) = -1.1712x + 5.9624 visto na e)

%g) estimar x=3.3 com parabola segundo minimos quadrados
[P2,S2] = polyfit(x,f,2)
val=polyval(P2,3.3)

%h)equação da parabola
%0.68x^2 -4.9882x + 10.7328  visto na g)

%i) comparar os modelos
S1.normr^2 %dá a soma do quadrado dos resíduos - erro
S2.normr^2
%o erro de p2(x) é menor que o de p1(x), pelo que o p2(x) ajusta melhor

%j) calcular coeficientes modelo no sentido dos MQ
%[c,RESNORM] = lsqcurvefit(@exerc3,[1,1,1],x,f)

%k) O modelo construido dá uma soma do quadrado dos residuos
%%Ex 4
t=[0 10 15 25 30 48 60 70 90];
v=[0 10 30 25 10 28 40 42 30];

%%Ex 5
I= integral(@exerc5,0,10)%integral de 0 a 10
%se tivesse erro, teria de ser incluido 'AbsTol', valor

function[f] = exerc1(x)
f(1)=-5.*x(1)+3.*sin(x(1))+cos(x(2));
f(2)=4.*cos(x(1))+2.*sin(x(2))-5.*(x(2));
end

function f = exerc2(x)
f=(1-(1+x).^-12)/x-(315-91)/24;
end

function [ m ] = exerc3( c,x )
m=c(1).*cos(x)+c(2).*(1/x)+c(3).*x;
end

function f = exerc5(x) %eq: x*(1-e^(-x)) + x^3
f = x.*(1-exp(-x))+x.^3;
end

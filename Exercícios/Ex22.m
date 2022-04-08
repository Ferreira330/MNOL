%%exercicio 22

[x,fval,exitflag,output]=fsolve(@exerc22,x0)
%%função
function[f] = exerc22(x)

f(1)=-x(2)+2*x(1)^2-4;
f(2)=-x(2)-x(2)^3-x(1)-8;

end

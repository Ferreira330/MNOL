% resolve exercicio 16
%%
fplot(@(x) exerc16(x), [0,10]);
grid;

%resolver sem opções
[x,fval,exitflag,output]=fsolve(@exerc16,6);

%%
function f = exerc16(x)
f=7*(2-0.9^(x))-10;
end

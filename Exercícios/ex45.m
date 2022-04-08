Q = integral(@res45,0,1,'AbsTol',0.0005)
%Q = integral(@(x)x.^2+1./(x+1),0,1,'Abstol',0.0005)

function f = res45(x)

f = x.^2 +1./(x+1);

end
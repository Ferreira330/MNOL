x = [0 12 18 27 30 34];
y = [20 18 15 9 12 10];

%%Spline completa

xx=[10 18 27 34];
yy=[20 15 9 10];

f_linha_0=(20-18)/(10-12);
f_linha_n=(12-10)/(34-10);

s_completa = spline(xx, [f_linha_0 yy f_linha_n]);

%para ver os segmentos da spline, fazer:
s_completa.coefs

s_29 = spline(xx, [f_linha_0 yy f_linha_n],29)

novo_x=10:0.1:34;
novo_y=spline(xx, [f_linha_0 yy f_linha_n],novo_x);
plot (x,y,'o',novo_x,novo_y,'r');

% 1.1
%% Alínea a
u=[1,2,3];
%% Alinea b
v=[1;2;3];
%% Alinea c
v=[1:10];
%% Alinea d
v=[2:2:12];
%% Alinea e
A=[2,2,3;4,5,6;7,8,9];
%% 1.2
%% Alinea a
%esquerda-linhas / direita colunas
B=A(2:3,1:2);
%% Alinea b
C=A(:,1:2);
%% Alinea c
D=[A;4 4 4];
%% Alinea d
E=D([2 4],:);
%% Alinea e
F=[0:3:9;2:2:8;5:5:20];
%% 1.3
%% Alinea a
v=eye(5,5);
%% Alinea b
v = rand(3,3);
%% Alinea c
X = zeros(2,3);
%% Alinea d

%% 1.4
A=[1,3,5;0,4,1;2,2,1];
B=ones(3,3);
a=[1,2,1];
b=[0,3,5];
%% Alinea a
C=A+B;

%% Alinea b
D=A*B;
%% Alinea c
E=a.*b;
%% Alinea d
F=A.*B;

%% 1.5

%% 1.6
x=[1,2,3,67,4,5];
funcao2(x)

function [soma,produto] = funcao2(x)
soma=sum(x)
produto=prod(x)
end

%% 1.7

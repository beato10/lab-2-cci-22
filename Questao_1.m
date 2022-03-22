% Função
f=@(x)x^3-x^2+10*x-5;
% Intervalo
a=0; b = 1; 
x0 = (a + b)/2;
%Gráfico da função 
figure
fplot(f, [a, b]);
grid on;
% Função de iteração para o ponto fixo e y(x) = x
g=@(x)(5-x^3+x^2)/10;
y=@(x) x;
figure
fplot(g, [a, b]);
hold on
fplot(y, [a, b]);
grid on;
% Função derivada
df=@(x) 3*x^2-2*x+10;
proverDerivada = 1;
figure
fplot(df, [a, b]);
grid on;

% Cálculo das raízes
%
% Zero do MATLAB
[X,FVAL,EXITFLAG,OUTPUT]=fzero(f,[a,b]);
fprintf('fzero\n');
fprintf('Raiz: %f, Iterações: %d, Valor da raiz: %f\n', X, OUTPUT.iterations, f(X));
OUTPUT.algorithm
% Bissecção 
[r, n] = Bisseccao(f, a, b, 10^-4, 1000);
fprintf('Bisseccao\n');
fprintf('Raiz: %f, Iterações: %d, Valor da raiz: %f\n', r, n, f(r));
% Posição Falsa
[r, n] = PosicaoFalsa(f, a, b, 10^-4, 1000);
fprintf('Posicao Falsa\n');
fprintf('Raiz: %f, Iterações: %d, Valor da raiz: %f\n', r, n, f(r));
% Ponto Fixo
[r, n] = PontoFixo(f, g, x0, 10^-4, 1000);
fprintf('Ponto Fixo\n');
fprintf('Raiz: %f, Iterações: %d, Valor da raiz: %f\n', r, n, f(r));
% Newton Raphson
[r, n] = NewtonRaphson(f, proverDerivada, df, x0, 10^-4, 1000);
fprintf('Newton Raphson\n');
fprintf('Raiz: %f, Iterações: %d, Valor da raiz: %f\n', r, n, f(r));
% Secante
[r, n] = SecanteVisual(f, a, b, 10^-4, 1000);
fprintf('Secante\n');
fprintf('Raiz: %f, Iterações: %d, Valor da raiz: %f\n', r, n, f(r));












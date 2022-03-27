% Função
f=@(x)x^3-x^2+10*x-5;
% Intervalo
a=0; b = 1; 
x0 = (a + b)/2;
%Gráfico da função 
figure
fplot(f, [a, b]);
xlabel('x');
ylabel('f(x)');
legend('f(x) = x^3-x^2+10*x-5');
title('Gráfico da função f');
grid on;
print -dpng -r400 graficoFq1.png
% Função de iteração para o ponto fixo e y(x) = x
g=@(x)(5-x^3+x^2)/10;
y=@(x) x;
figure
fplot(g, [a, b]);
hold on
fplot(y, [a, b]);
xlabel('x');
ylabel('f(x)');
legend('g(x) = (5-x^3+x^2)/10', 'y(x) = x');
title('Gráfico da função de iteração g e da bissetriz do primeiro quadrante');
grid on;
print -dpng -r400 graficoGq1.png
% Função derivada
df=@(x) 3*x^2-2*x+10;
proverDerivada = 1;
figure
fplot(df, [a, b]);
xlabel('x');
ylabel('df(x)');
legend('df(x) = 3*x^2-2*x+10');
title('Gráfico da função derivada de f');
grid on;
print -dpng -r400 graficoDFq1.png

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












% Função
f = @(x)(x^2+1e-7);
% Intervalo
a=-1; b = 0; 
x0 = (a + b)/2;
%Gráfico da função 
figure
fplot(f, [a, b]);
xlabel('x');
ylabel('f(x)');
legend('f(x) = x^2+1e-7');
title('Gráfico da função f');
grid on;
print -dpng -r400 graficoFq4.png


% Cálculo das raízes
%
% Zero do MATLAB
%[X,FVAL,EXITFLAG,OUTPUT]=fzero(f,[a,b]);
fprintf('fzero\n');
fprintf('<indefinido>\n');
%fprintf('Raiz: %f, Iterações: %d, Valor da raiz: %f\n', X, OUTPUT.iterations, f(X));
%OUTPUT.algorithm
% Bissecção 
[r, n] = Bisseccao(f, a, b, 10^-4, 1000);
fprintf('Bisseccao\n');
fprintf('Raiz: %f, Iterações: %d, Valor da raiz: %f\n', r, n, f(r));
% Newton Raphson
proverDerivada = 0;
df = 0;
[r, n] = NewtonRaphson(f, proverDerivada, df, x0, 10^-4, 1000);
fprintf('Newton Raphson\n');
fprintf('Raiz: %f, Iterações: %d, Valor da raiz: %f\n', r, n, f(r));
% Secante
[r, n] = SecanteVisual(f, a, b, 10^-4, 1000);
fprintf('Secante\n');
fprintf('Raiz: %f, Iterações: %d, Valor da raiz: %f\n', r, n, f(r));












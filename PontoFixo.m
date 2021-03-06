% Função de iteração g(x) e g'(x) devem ser contínuas em I
% x0 deve pertencer a I
% |g'(x)| < 1

function [r,n] = PontoFixo(f, g, x0, epsilon, maxIteracoes)
n = 0;
r = x0;
while n < maxIteracoes
    r = g(r);
    n = n + 1;
    yr = f(r);
    if abs(yr) < epsilon
        break;
    end
end
if n >= maxIteracoes
    disp('O número máximo de iterações foi atingido')
end
end

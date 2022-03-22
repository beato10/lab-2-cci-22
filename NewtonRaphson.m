function [r,n] = NewtonRaphson(f, proverDerivada, df, x0, epsilon, maxIteracoes)
n = 0;
x = x0;

if proverDerivada == 1
    while n < maxIteracoes
        r = x - f(x) / df(x);
        n = n + 1;
        yr = f(r);
        if abs(yr) < epsilon
            break;
        end
        x = r;
    end
    
else
    h = 10^(-12);
    while n < maxIteracoes
        Df = (f(x + h) - f(x)) / h;
        r = x - f(x) / Df;
        n = n + 1;
        yr = f(r);
        if abs(yr) < epsilon
            break;
        end
        x = r;
    end
end

if n >= maxIteracoes
    disp('O número máximo de iterações foi atingido')
end

end

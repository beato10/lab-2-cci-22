function [r,n] = SecanteVisual(f, x0, x1, epsilon, maxIteracoes)
n = 0;
while n < maxIteracoes
    r = x1 -(x1 - x0)*f(x1) / (f(x1) - f(x0));
    n = n + 1;
    plot(n,r, '*');
    xlabel('iteração');
    ylabel('raiz');
    title('Gráfico da secante visual');
    grid on;
    print -dpng -r400 graficoSecVisualq6.png    % toda vez que rodar mudar o nome
    hold on;
    yr = f(r);
    if abs(yr) < epsilon
        break;
    end
    x0 = x1;
    x1 = r;
end
if n >= maxIteracoes
    disp('O número máximo de iterações foi atingido')
end

end

clc, clear
fprintf('|    Serie Macluarin    |');
fprintf('\n|-----------------------|');
fprintf('\n');
x = input('Introduzca el valor de x: ');
Es = input('Introduzca Es: ');
e=2.7182818284590452353602874713527;
ValorV=e^x;
for n=0:1:20
    if n==0
        ValorA=1;
        Et=ValorV-ValorA;
        fprintf('\ni    ValorA     Et        Ea');
        fprintf('\n%d    1          %.4f    0',n+1,Et);
    else
        f=x^n/factorial(n);
        AproxAnt=ValorA;
        ValorA=ValorA+f;
        Et=ValorV-ValorA;
        Ea=((ValorA-AproxAnt)/ValorA)*100;
        if Ea<Es
            fprintf('\n%d    %.4f     %.4f    %.4f',n+1,ValorA,Et,Ea);
            break;
        else
            fprintf('\n%d    %.4f     %.4f    %.4f',n+1,ValorA,Et,Ea);
        end
    end
    
end
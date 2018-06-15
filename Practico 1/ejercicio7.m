function r = ejercicio7(n, m)
    if (n < m)
        disp('M es mayor')
        r = m;                    
    else
        if (n > m)
            disp('N es mayor')
            r = n;
        else 
            disp('N y M son iguales')
            r = n;
        end
    end
endfunction

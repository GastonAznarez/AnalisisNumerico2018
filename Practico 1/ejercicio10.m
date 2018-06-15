function n = ejercicio10(coef, x)
    n = 0;
    for i = 1 : length(coef)
        n = n*x + coef(i);
    end
endfunction            

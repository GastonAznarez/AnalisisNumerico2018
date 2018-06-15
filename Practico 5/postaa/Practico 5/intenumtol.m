function [intT, intS] = intenumtol(tol)   
    f = @(x)x*e^(-x);
    i = 2;
    while abs(intenumcomp(f, 0, 1, i - 1, 'trapecio') - intenumcomp(f, 0, 1, i, 'trapecio')) >= tol
        i++;
    endwhile
    
    intT(1) = intenumcomp(f, 0, 1, i - 1, 'trapecio');
    i
    i = 2;
    while abs(intenumcomp(f, 0, 1, i, 'simpson') - intenumcomp(f, 0, 1, i + 2, 'simpson')) >= tol
        i = i + 2;
    endwhile
    
    intS(1) = intenumcomp(f, 0, 1, i, 'simpson');
    i
    f = @(x)x*sin(x);
    
    i = 2;
    while abs(intenumcomp(f, 0, 1, i - 1, 'trapecio') - intenumcomp(f, 0, 1, i, 'trapecio')) >= tol
        i++;
    endwhile
    
    intT(2) = intenumcomp(f, 0, 1, i - 1, 'trapecio');
    i
    
    i = 2;
    while abs(intenumcomp(f, 0, 1, i, 'simpson') - intenumcomp(f, 0, 1, i + 2, 'simpson')) >= tol
        i = i + 2;
    endwhile
    
    intS(2) = intenumcomp(f, 0, 1, i, 'simpson');
    i
    
    
    f = @(x)(1 - x^2)^(3/2);
    
    i = 2;
    while abs(intenumcomp(f, 0, 1, i - 1, 'trapecio') - intenumcomp(f, 0, 1, i, 'trapecio')) >= tol
        i++;
    endwhile
    
    intT(3) = intenumcomp(f, 0, 1, i - 1, 'trapecio');
    i
    
    i = 2;
    while abs(intenumcomp(f, 0, 1, i, 'simpson') - intenumcomp(f, 0, 1, i + 2, 'simpson')) >= tol
        i = i + 2;
    endwhile
    
    intS(3) = intenumcomp(f, 0, 1, i, 'simpson');
    i
    
    
    f = @(x)1/sqrt(1 - (sin(x))^2/2);
    
    i = 2;
    while abs(intenumcomp(f, 0, pi/2, i - 1, 'trapecio') - intenumcomp(f, 0, pi/2, i, 'trapecio')) >= tol
        i++;
    endwhile
    
    intT(4) = intenumcomp(f, 0, pi/2, i - 1, 'trapecio');
    i
    i = 2;
    while abs(intenumcomp(f, 0, pi/2, i, 'simpson') - intenumcomp(f, 0, pi/2, i + 2, 'simpson')) >= tol
        i = i + 2;
    endwhile
    
    intS(4) = intenumcomp(f, 0, pi/2, i, 'simpson');
    i
endfunction
#ejercicio 4 practico 5
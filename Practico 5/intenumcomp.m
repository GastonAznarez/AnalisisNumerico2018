function s = intenumcomp(f, a, b, N, regla)
    h = (b-a)/N;
    switch (regla)
        case "trapecio"
            for i = 1 : N-1
                j = sum(a + i*h);
            endfor   
            s = ((h*h)/2) * [f(a) + 2 * j + f(b)];
            
        case "pm"
            for i = N : 2
                j = sum((f(x(i-1) - x(i)/2)));
            endfor
                s = j * h;
            
        case "simpson"
            for j = 1 : N/2
                d1 = sum(f(a +(2*j-1)*h));
            endfor
            for u = 1 : (N-2)/2
                d2 = sum(f(a + 2*i*h));
            endfor    
            s = (h/3)*[f(a)+ 4 * d1 + 2 * d2 + f(b)];    
                            
        endswitch
endfunction
        

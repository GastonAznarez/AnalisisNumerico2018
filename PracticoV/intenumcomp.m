function s = intenumcomp(f, a, b, n, regla)
    h = (b - a)/n;
    s = 0;
    switch(regla)
        case 'trapecio'
            for i = 1 : n - 1
                s += 2 * f(a + i*h);
            endfor
            s = (h / 2) * (f(a) + s + f(b));
        case 'pm'
            for i = 1 : n
                s += h * f((2 * a + h * (2 * i - 1))/2);
            endfor
        case 'simpson'
            if(mod(n, 2) == 0)
                for i = 1 : n / 2
                    s += 4 * f(a + h * (2 * i - 1));
                endfor
                for i = 1 : (n - 2) / 2
                    s += 2 * f(a + 2 * i * h);
                endfor
                s = (h / 3) * (f(a) + f(b) + s);
            else
                s = 'error';
            endif
        otherwise
            s = 'Not a correct input';
        endswitch
    endfunction

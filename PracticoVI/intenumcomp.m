function [res] = internumcomp(fun, a, b, N, regla)

    x = linspace(a, b, N);

    switch(regla)

        case 'trapecio'

            fact = (b - a)/(2 * N);
            fs = polyval(fun, x);
            sumat = sum(fs(2:(N-1)), 2);
            sumat = 2 * sumat + fs(1) + fs(N);
            res = fact * sumat;

        case 'pm'
            res = 0;

        case 'simpson'

            fact = (b-a)/(3*N);
            sumat = 0;
            for i = 1 : (N/2)
                sumat = sumat + fun(2*i-2) + 4*fun(2*i-1) + fun(2*i);
            endfor
            res = sumat + fact;

        otherwise
            res = 0;
    endswitch
endfunction

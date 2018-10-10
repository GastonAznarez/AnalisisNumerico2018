function [ret] = ej1()

    x4 = @(l)l^4;
    x3 = @(l)l^3;
    x2 = @(l)l^2;
    x1 = @(l)l;
    co0 = @(x) cosh(x);
    co1 = @(x) cosh(x)*x;
    co2 = @(x) cosh(x)*x^2;

    x4 = intenumcomp(x4, -1, 1, 100, 'simpson');
    x3 = intenumcomp(x3, -1, 1, 100, 'simpson');
    x2 = intenumcomp(x2, -1, 1, 100, 'simpson');
    x1 = intenumcomp(x1, -1, 1, 100, 'simpson');
    co0 = intenumcomp(co0, -1, 1, 100, 'simpson');
    co1 = intenumcomp(co1, -1, 1, 100, 'simpson');
    co2 = intenumcomp(co2, -1, 1, 100, 'simpson');

    A = [x4, x3, x2; x3, x2, x1; x2, x1, 2];

    b = [co2; co1; co0];

    z = soleg(A'*A, A'*b);

    xx = linspace(-1, 1,100);

    for i = 1 : 100
        yy(i) = z(1)*(xx(i))^2 + z(2)*xx(i) + z(3);
    endfor

    plot(xx, cosh(xx), 'r');
    hold on;
    plot(xx, yy, 'b');

endfunction

function r = lab5ej3(n)
    x = 0 : 0.5 : n;
    for i = 1 : length(x)
        n(i) = ceil(x(i)/0.1);
    endfor
    r(1) = 0;
    for i = 2: length(x)
        r(i) = intenumcomp(@(x)cos(x), 0, x(i), n(i), 'trapecio');
    endfor
    plot(x, sin(x), 'o');
    hold on;
    plot(x, r, 'g', 'linewidth', 2);
endfunction

function [] = ej1()

    fun = @(x) 2/((3+x^2)*((x+1)^(1/2)));

    xpolnewt = 0:0.05:10;

    y(1) = 0;
    for i = 2:10
        inter = ceil((i-1)/0.045);
        trap(i) = intenumcomp(fun, 1, i, inter, 'trapecio');
    endfor

    intervalo = [1:10];

    newt = inewton(intervalo, trap, xpolnewt);

    plot(xpolnewt, newt, 'r',"linewidth", 2);

    hold on

    for j=1:10
        a = [j, trap(j)]
        plot(j, trap(j), '*');
    endfor

endfunction

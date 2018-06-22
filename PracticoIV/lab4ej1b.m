function [ret] = lab4ej1b()
    fun = @(x) ((3/4)*x-1/2);

    x = linspace(1,10,20);

    for i = 1 : 20
        y(i) = fun(x(i));
    endfor

    pol = polyfit(x,y,2);
    pol_y = polyval(pol,x)

    plot(x,y,'-*r');
    hold on;
    %plot(x, pol_y,'-*b');

endfunction

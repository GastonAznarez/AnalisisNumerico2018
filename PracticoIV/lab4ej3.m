function [ret] = lab3ej3()
    load 'datos3a.mat'
    load 'datos3b.mat'

    %Ejercicio a
    pol_1 = polyfit(x, y, 1);
    B_1 = exp(pol_1(1));
    A_1 = pol_1(2);

    plot(x, y, 'r');
    hold on
    ys_1 = polyval(pol_1, x);
    plot(x, ys_1, 'b');

    %Ejercicio b
    pol_2 = polyfit(xd, (xd./yd), 1);
    B_2 = pol_2(1);
    A_2 = pol_2(2);

    figure(2);
    plot(xd, (xd./yd), 'r');
    hold on
    ys_2 = polyval(pol_2, xd);
    plot(xd, ys_2, 'b');

endfunction

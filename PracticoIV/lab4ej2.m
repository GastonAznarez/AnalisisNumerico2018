function [ret] = lab4ej2()
    x = linspace(-10,10,20);
    for i = 1:20
        cos_y(i) = cos(x(i));
        arc_y(i) = asin(x(i));
    endfor

    for i = 0:5
        figure(i+1);
        pol = polyfit(x, cos_y, i);
        pol2 = polyfit(x, arc_y, i);
        pol_y = polyval(pol, x);
        pol_y2 = polyval(pol2, x);
        plot(x, cos(x), 'r');
        hold on
        plot(x, asin(x), 'g');
        plot(x, pol_y2, 'g');
        plot(x, pol_y, 'r');
        hold off
    endfor

endfunction

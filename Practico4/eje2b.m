function x = eje2b
    x = linspace(0, 4*pi, 50);
    for i = 1 : 50
        y(i) = cos(x(i));
    endfor
    for i = 0 : 5
        p = polyfit(x, y, i);
        yd = polyval(p, x);
        figure(i+1);
        plot(x, y,'b', 'linewidth', 2);
        hold on
        plot(x, yd, 'g', 'linewidth', 2);
        hold off
    endfor
endfunction         
            
        
        

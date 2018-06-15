function [x,y] = eje1b
        x = linspace(0, 10 ,20);
        for i = 1 : 20
            y(i) = fun2(x(i)) + randn();
        endfor
        p = polyfit(x, y, 1);
        yd = polyval(p, x);
        
        plot(x, fun2(x),'b', 'linewidth', 2);
        hold on
        plot(x, y, 'ro', 'linewidth', 2);
        plot(x, yd, 'g', 'linewidth', 2);
endfunction         
            
        
           




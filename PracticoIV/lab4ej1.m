function [out] = lab4ej1()
    load 'datos1a.mat';

    pol = polyfit(xd, yd, 1);

    x = [-100:1:100];

    y = polyval(pol,x);

    plot(x,y,'-r','linewidth',3);
    hold on;
    for i =1:length(xd)
        plot(xd(i), yd(i), '*g')
    endfor


endfunction

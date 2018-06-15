function [z1, z2] = eje1
    load("datos1a.mat")
    n = length(xd);

    global z1 = ((sum(xd.^2) * sum(yd)) - (sum(xd) * (sum(xd.*yd)))) / ((xd(n) * (sum(xd.^2))) - sum(xd)^2);

    global z2 = ((xd(n) * (sum(xd.*yd)) - (sum(xd) * sum(yd)))) / (xd(n) * (sum(xd.^2)) - (sum(xd)^2));
    
    [p] = polyfit(xd,yd,1);
    x = linspace(xd(1), xd(n) ,200);
    plot(x, fun1(x), 'g', 'linewidth', 3);
    hold on;
    plot(xd,yd, 'ro', 'linewidth', 2);
endfunction

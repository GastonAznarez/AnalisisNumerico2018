function w = eje4(n)
z = linspace(-1, 1, 200);
    for i = 1 : n + 1
        x(i) = (2*(i - 1))/(n-1);
        y(i) = fun4(x(i));
        w = inewton(x, y, z);
        figure(i);
        plot(z, w);
        hold on;
        plot(z, fun4(z)); 
        hold off;
    endfor
    




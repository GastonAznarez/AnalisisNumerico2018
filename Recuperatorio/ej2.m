function [ret] = ej2()
    t = [268, 269, 270, 271, 272, 273, 274, 275];
    p = [22.0505, 22.1285, 22.2109, 22.2556, 22.3129, 22.4219, 22.5495, 22.5744];

    plot(p, t, '*b');
    hold on;

    for i = 1:5
        inter_x(i) = 22+i/10
    endfor

    newt = inewton(p, t, inter_x)

    plot(inter_x, newt, 'or');


endfunction

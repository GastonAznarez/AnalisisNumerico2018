function w = ej3(x)
    y = fun3(x);
    for j = 1 : 150
        z(j) = 24/25 + j/25;
    end
    w = inewton(x, y, z);
    
    plot(z , fun3(z));
    hold on;
    plot(z, w, '*');
endfunction

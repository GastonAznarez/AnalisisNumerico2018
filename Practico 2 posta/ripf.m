function t = ripf(f,x0,err,mit)
    hx(1) = x0;   %asigno x0%
    hx(2) = f(x0); %aplico la funcion en x0%
    i = 2; 
    while(i <= mit && abs(hx(i) - hx(i-1)) > err) %si la diferencia entre una interacion y la anterior es menor al error termina el while% 
        hx(i + 1) = f(hx(i));   %xn+1 = f(xn)%
        i++;
    endwhile
    plot(hx);     %plot es para que octave grafique%
    t = hx(end);  %asigno t al valor que quiero que se muestre en pantalle, en este caso el punto fijo o su aproximacion%
endfunction

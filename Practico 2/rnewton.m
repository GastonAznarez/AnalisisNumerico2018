function [hx,hf] = rnewton(fun,xo,err,mit)
    i=1;
    hx(i) = xo;
    [fn,fd] = f(xo);
    hf(i) = f(xo);
    while (i <= mit && abs(hf(i)) > err)
        i++;
        hx(i) = hx(i-1) - fn/fd;
        hf(i) = fn;
        [fn,fd] = f(hx(i));
    end     
    

endfunction            

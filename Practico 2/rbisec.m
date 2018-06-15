function [hx, hf] = rbisec(f,I,err,mit)
    x = I(1):0.01:I(2);
    i = 1;
    med = I(1);
    hx(1) = med;
    hf(1) = f(med);
    while i <= mit && abs(f(med)) > err
        med = (I(1) + I(2))/2;
        
        if(f(I(1))*f(med) < 0)
            I(2) = med;
        else
            I(1) = med;
        endif
        hx(i + 1) = med;
        hf(i + 1) = f(med);
        i++;
    endwhile
    plot(hx, hf);
endfunction

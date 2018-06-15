function err = intenumerr()
    r = 1 - e^(-1);
    f = @(x)e^(-x);
    err(1) = abs(intenumcomp(f, 0, 1, 4, 'trapecio') - r);
    err(2) = abs(intenumcomp(f, 0, 1, 10, 'trapecio') - r);
    err(3) = abs(intenumcomp(f, 0, 1, 20, 'trapecio') - r);
    err(4) = abs(intenumcomp(f, 0, 1, 4, 'pm') - r);
    err(5) = abs(intenumcomp(f, 0, 1, 10, 'pm') - r);
    err(6) = abs(intenumcomp(f, 0, 1, 20, 'pm') - r); 
    err(7) = abs(intenumcomp(f, 0, 1, 4, 'simpson') - r);
    err(8) = abs(intenumcomp(f, 0, 1, 10, 'simpson') - r);
    err(9) = abs(intenumcomp(f, 0, 1, 20, 'simpson') - r);  
endfunction
#ejercio 2 practico 5
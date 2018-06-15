function [hx, hf] = rnewton(f, Xo, err, maxit)
	
	
	i = 1;
	hx(i) = Xo;              %asigno a x0%
	[fn, fd] = f(Xo);
	hf(i) = fn;
	condicion = (-hx(i) + (hx(i) - fn/fd))/(hx(i) - fn/fd);   %(xn+1 -xn)/xn que es lo mismo que (xn - xn-1)/xn-1 %
	
	while (i <= maxit && abs(hf(i)) > err && condicion < err) 
		i++;
		hx(i) = hx(i-1) - fn/fd;
		hf(i) = fn;
		[fn, fd] = f(hx(i));
		
	end
		
endfunction

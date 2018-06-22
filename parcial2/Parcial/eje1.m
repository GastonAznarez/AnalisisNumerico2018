function [x,y,n,a,p] = ej1()
	n(1) = 0;
	a(1) = 0;
	y(1) = 0;
	for i = 2 : 10
		n(i) = ceil((i-1) / 0.045);
		a(i) = ((i-1)/n(i));
		y(i) = intenumcomp(@func, 1, i, n(i), "trapecio")

	endfor

	x = [1:10];
	z = [0:0.05:10];
	p = inewton(x,y,z);

	plot(z, p, 'g','linewidth', 2);
	hold on
	plot(x, y, 'ro', 'linewidth', 2);

endfunction
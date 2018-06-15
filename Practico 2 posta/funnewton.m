function [v,w] = funnewton (x)
	v = (x*x*x) - x - 1;
	w = 3*(x*x) - 1;
endfunction

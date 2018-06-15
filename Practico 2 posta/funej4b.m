function [f,fd] = funej4b (x, a)
	
	f = (x*x*x) - a;
	fd = 3*(x*x);
	
endfunction

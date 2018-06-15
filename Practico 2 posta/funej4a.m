function [f,fd] = funej4 (x)
	
	global a;
	
	f = (x*x*x) - a;
	fd = 3*(x*x);
	
endfunction

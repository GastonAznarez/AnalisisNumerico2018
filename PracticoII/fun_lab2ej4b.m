function [ out ] = fun_lab2ej4b( a )

  out = rnewton(@(x)squart(x,a), 2, 1e-6, 200);

end

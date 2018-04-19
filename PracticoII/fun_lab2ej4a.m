function [ out ] = fun_lab2ej4a( x )

  global a = x;

  out = rnewton(@squartOfA, 2, 1e-6, 200);

end

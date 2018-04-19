function [ out ] = fun_lab2ej6( x0 )

 out = ripf(@(x) 2^(x-1), x0, 1e-5, 100 );

end

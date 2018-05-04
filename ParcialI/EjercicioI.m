function [ out ] = EjercicioI(  )

  %f = @(x) x^3+4*x^2-10+x;
  %f = @(x) (4*x^2 - 10)/ (x*x);
  f = @(x) sqrt(10-x^3)/4;
  %f = @(x) (10-x^3)/4*x;

  out = ripf(f, (-1.3), 1e-5,1000);

end

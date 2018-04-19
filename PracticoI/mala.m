function [ret] = mala(a,b,c)
  aux = sqrt(b^2-4*a*c);
  f = (-b - aux)/(2*a);
  g = (-b + aux)/(2*a);
  ret = [f,g]
end

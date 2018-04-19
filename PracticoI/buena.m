function [ret] = buena(a,b,c)
  aux = sqrt(b^2-4*a*c);
  f = (-b - aux)/(2*a);
  g = (-b + aux)/(2*a);

  if (a*f^2+b*f+c) == 0
    g = (-(b/a) - f);
  else
    f = (-(b/a) - f);
  endif
  ret = [f,g]
end

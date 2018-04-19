function [ out ] = horn( coef, x )

  out = x(1);
  for i=2 : size(coef,2)
    out = out*x + coef(i);
  end

end

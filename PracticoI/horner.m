function [y b] = horner(a,x)
  b(1) = a(1);
  for i = 2:length(a)
    b(i) = a(i)+x*b(i-1);
  end
  y = b(length(a));
  b = b(1:length(b)-1);
end

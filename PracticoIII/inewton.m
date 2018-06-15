function [ w ] = inewton( x, y, z )

  m = length(z);
  n = length(x);

  for i=1:n
    c(1,i) = y(i);
  end

  for i = 2:n
    for j= i:n
      c(i,j) = (c(i-1,j) - c(i-1,j-1)) / (x(j) - x(j-i+1));
    end
  end

  w = zeros(1,m);

  for i = 1:m
    for k = 1:n
      s = 1;
      for t = 1:k-1
        s = (z(i) - x(t))*s;
      end
      w(i) = w(i) + c(k,k) * s;
    end
  end
end

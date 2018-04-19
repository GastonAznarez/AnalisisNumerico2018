function [ hx ] = ripf( fun, x0, err, mit )

  hx = zeros(mit,1);
  hx(1) = x0;

  for i = 2 : mit

    hx(i) = fun(hx(i-1));

    if abs( hx(i) - hx(i-1));
      break;
    end

  end

end

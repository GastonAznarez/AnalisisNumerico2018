function [ hx ] = ripf( fun, x0, err, mit )

  hx = zeros(mit);
  hx(1,1) = x0;

  for i = 2 : mit

    hx(1, i) = fun(hx(1,(i-1)));

    if abs( hx(1,i) - hx(1 , (i-1) ));
      return;
    end

  end

end

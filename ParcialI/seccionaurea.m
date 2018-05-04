function [ret] = rbisec(fun, I, err, mit)

  hx = zeros(mit, 1);
  hf = zeros(mit, 1);


  iter = 0;

  alp = (3-sqrt(5))/2;

  u = fun(I(1));
  v = fun(I(2));
  e = I(2) - I(1);

  if (sign(I(2)) * sign(I(1)) <= 0)
    atexit('rbisec', false);
  end


  for k = 1 : mit

    iter = i;
    %c = I(1) + e;
    c = I(1)*alp + I(2) * (1-alp);
    e = c-I(1);
    hx(k) = c;
    w = fun(c);
    hf(k) = w;

    if abs(e) < err
      break;
    end

    if sign(w) * sign(u) < 0
      I(2) = c;
      v = w;
    else
      I(1) = c;
      u = w;
    end

  end

  ret = [hx, hf];

end

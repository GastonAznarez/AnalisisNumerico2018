function [ out ] = rnewton( fun, x0, err, mit )
  hx = zeros(mit + 1, 1);
  hf = zeros(mit + 1, 1);
  hx(1) = x0;
  i = 1;

  while (i < mit)
    res = (fun(hx(i)));
    hf(i) = (fun(hx(i)))(1);
    hx(i+1) = hx(i) - res(1)/res(2);

    cond = (abs(hx(i+1) - hx(i))/abs(hx(i+1)));

    if cond < err || err > hf(i)
      cond;
      hf(i);
      break;
    end

    ++i;
  endwhile

  out = [hx,hf];

end

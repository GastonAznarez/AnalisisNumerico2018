function w = lab3ej3

  f = @(x) 1./x;

  for j = 1:101
    z(j) = 24/25 + j/25;
  end

  x = [1:5];
  y = f(x);

  [w] = inewton(x,y,z);
  x1 = linspace(-100,100,100);
  y1 = f(x1)
  plot(z,w,'r') %polinomio
  hold on
  plot(x1,y1,'*') %funcion
  plot(x,y,'.','linewidth',3) %puntos de la interpolacion

end

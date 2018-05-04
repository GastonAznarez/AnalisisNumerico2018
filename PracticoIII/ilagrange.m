function [ w ] = ilagrange( x, y, z ) %x -> y values  //  z puntos a interpolar  //  w l(z[n])

  w = zeros(1,length(z));

  for k = 1 : length(z)

    l = 1;

    for i = 1 : length(x)

      l = 1;

      for j = 1 : length(x)

        if (i != j)
          l = l * ((z(k) - x(j))/(x(i)-x(j)));
        endif

      end

      w(k) = w(k) + y(i) * l;

    end

  end

endfunction

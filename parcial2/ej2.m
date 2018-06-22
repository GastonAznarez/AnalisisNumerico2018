function [res] = ej2()

    %k = @(x) f/(l-3.5);
    l = [7, 8.3, 9.4, 11.3, 12.3, 14.4, 15.9];

    f = [2,3,4,5,6,8,10];

    suma_l = 0;
    suma_f = 0;

    for i = 1 : 7
        suma_f = suma_f + f(i)*(l(i)-5.3);
        suma_l = suma_l + (l(i)-5.3)^2;
    endfor

    k = suma_f/suma_l


endfunction

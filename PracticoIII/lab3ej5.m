function [out] = lab3ej5()

    load 'datos_aeroCBA.dat';

    counter_year = 1;
    counter_inter = 1;

    for i = 1 : length(datos_aeroCBA)
        if (!isnan(datos_aeroCBA(i,2)))
            year(counter_year) = datos_aeroCBA(i,1);
            temp(counter_year) = datos_aeroCBA(i,2);
            counter_year++;
        else
            inter_year(counter_inter) = datos_aeroCBA(i,1);
            counter_inter++;
        endif
    endfor

    for i = 1:length(year)
        plot(year(i), temp(i), '*r');
        hold on
    endfor

    inter_temp = interp1(year, temp, inter_year, 'spline', 'extrap');

    for i = 1:length(inter_year)
        plot(inter_year(i), inter_temp(i), 'g', 'linewidth', 3);
    endfor

    inter_year
    inter_temp
    year
    temp

endfunction

function [ out ] = lab3_ej5()

    datos = load("datos_aeroCBA.dat");

    year = datos(:,1);
    temp = datos(:,2);
    year1 = (1957:1/8:2017)

    x = [];    
    y = [];
    z = [];
    w = [];

    for i = 1 : size(year)
        if (isnan(temp(i)) == 0)
            x = [x year(i)];
            y = [y temp(i)];
        else
            z = [z year(i)];
        endif
    endfor

    w = interp1(x,y,z,"spline","extrap");
    w1 = interp1(x,y,year,"spline","extrap");

    out = w;

    figure(1);
    newplot(1);
    hold on;
    plot(x,y,"r.","markersize",12);
    plot(year1, w1,'g-','linewidth',3);
    plot(z,w,'b.','markersize',14);
    plot(year1,w1,'k.','markersize',5);


end
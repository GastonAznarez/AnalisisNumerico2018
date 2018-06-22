function w = inewton(x,y,z)
n = length(x);
m = length(z);

    for  i = 1 : n
        dif(i,1) = y(i);
    end       

    for j = 2 : n
        for i = 1 : n - j + 1
            dif(i, j) = (dif(i + 1, j - 1) - dif(i, j - 1))/(x(i + j - 1) - x(i));
        end
    end
    
    for i = 1 : m
        w(i) = 0;
        for j = 1 : n
            sum = 1;
            for k = 1 : j - 1
               sum = sum * (z(i) - x(k));
            end
        w(i) += sum * dif(1, j); 
        end
    end
endfunction            
             

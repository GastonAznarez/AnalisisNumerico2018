function w = ilagrange(x,y,z)
n = length(x);
m = length(z);
w = [];
for k = 1: m
w(k) = 0;
    for i = 1: n
        l = 1;
        for j = 1: i-1        
            l = l * ((z(k) - x(j))/(x(i) - x(j)));
        endfor
        
        for j = i+1 : n
            l = l * ((z(k) - x(j))/(x(i) -x(j)));
        endfor    
       
    w(k) = w(k) + y(i) * l;
    endfor
endfor
    
endfunction     
    

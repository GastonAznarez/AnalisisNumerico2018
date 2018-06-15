function [C,A] = eje3
    load("datos3a.mat")
           p = polyfit(log(x), log(y), 1 )
           C = exp(p(2));
           A = p(1);
endfunction         

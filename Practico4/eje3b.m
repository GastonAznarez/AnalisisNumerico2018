function [A,B] = eje3b
    load("datos3a.mat")
    p = polyfit(x, x./y, 1)
    A = p(1);
    B = p(2);
endfunction    

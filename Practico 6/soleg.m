function x = soleg(A, b)
    [U, y] = egauss(A, b);
    x = soltrsup(U, y);
end
#ejercicio 2b practico 6

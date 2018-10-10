function [U, y] = egauss(A, b)
    rows = length(A);
    U = A;
    y = b;
    for j = 1 : rows - 1
        for i = j + 1 : rows
            z = U(i, j)/U(j, j);
            U(i, j) = 0;
            for k = j + 1 : rows
                U(i, k) = U(i, k) - z*U(j, k);
            end
            y(i) = y(i) - z*y(j);
	    end
    end
end
#ejercicio 2a practico 6

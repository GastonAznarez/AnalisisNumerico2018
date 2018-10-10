function x = soltrsup(A, b)
    rows = length(A);
    x = [];
    for i = rows : -1 : 1
    	if A(i,i) == 0
    		disp('La matriz es singular');
    		break;
    	else
	        sum = 0;
	        for j = i + 1 : rows
	            sum += x(j)*A(i, j);
	        endfor
	        x(i) = (b(i) - sum)/A(i,i);
        end
    end
end

#ejercicio 1 practico 6

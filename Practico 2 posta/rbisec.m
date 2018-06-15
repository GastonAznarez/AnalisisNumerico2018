function [hx, hf] = rbisec(f,I,err,mit)
    
    x = I(1):0.01:I(2); %Es para que el grafico de x se pueda apreciar mejor haciendo un punto cada 0.01%
    
    if (I(2) - I(1) < 0)
    
        disp("No se puede trabajar con un intervalo como este. Si I = [a, b] entonces a tiene que ser mas chico que b")

    else

        if (f(I(1)) * f(I(2)) > 0) 
            
            disp("No se puede comenzar a iterar, ya que no cumple con las condiciones de biseccion")

        else

            i = 1;
            med = I(1); %Le asigno "a" a med, del intervalo [a,b]%
            hx(1) = med;
            hf(1) = f(med);
            while i <= mit && abs(f(med)) > err     
                
                med = (I(1) + I(2))/2; %sumo la distancia y divido en 2%
                
                if (f(I(1))*f(med) < 0)  
                    I(2) = med;
                else
                    I(1) = med;
                endif

                hx(i + 1) = med;
                hf(i + 1) = f(med);
                i++;

            endwhile
            
            plot(hx, hf, x, f(x)); %El plot es para realizar el grafico de todos los valores de nuestro programa%

        endif

    endif
    
endfunction

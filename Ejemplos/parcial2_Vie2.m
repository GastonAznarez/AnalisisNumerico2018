%ej1
% \item  Se desea ajustar una tabla de valores $\lbrace (x_k,y_k) \rbrace_{k=1}^m$ por una funci\'on de la forma \[y(x)=a\ln x+b\cos x+c e^x, \] en el sentido de m\'inimos cuadrados. O sea, se desea hallar $a$, $b$ y $c$ que minimicen la funci\'on error
% \[E(a,b,c)=\sum_{k=1}^m (a\ln x_k+b\cos x_k+c e^{x_k}-y_k)^2. \]
% \begin{enumerate}
% \item {\bf (40 pts.)} Usando la siguiente tabla de valores $\lbrace (x_k,y_k) \rbrace_{k=1}^{10}$ construya el sistema de ecuaciones, resuelva y encuentre las constantes $(a,b,c)$. Para resolver use la funci\'on \texttt{soleg} programada en la materia.
% \begin{center} \begin{tabular}{|c|c|c|c|c|c|c|c|c|c|c|c||} \hline 
% x &  0.24 & 0.65 & 0.95 & 1.24 & 1.73 & 2.01 & 2.23 & 2.52 & 2.77 & 2.99 \\ \hline 
% y & 0.23 & -0.26 & -1.1 & -0.45 & 0.27 & 0.1 & -0.29 & 0.24 & 0.56 & 1.00 \\ \hline 
% \end{tabular} \end{center} 
% \item {\bf (20 pts.)} Realice un gr\'afico con los datos de la tabla (utilice puntos discretos) y la evaluaci\'on de la funci\'on $y(x)$ (con curva continua).
% \end{enumerate} 
x=[0.24 0.65 0.95 1.24 1.73 2.01 2.23 2.52 2.77 2.99];
y=[0.23 -0.26 -1.1 -0.45 0.27 0.1 -0.29 0.24 0.56 1.00];
%item a
x=x(:); y=y(:);
A=[log(x),cos(x),exp(x)];
b=y;
z=soleg(A'*A,A'*b);

%item b
xx=linspace(x(1),x(end),200);
yy=z(1)*log(xx)+z(2)*cos(xx)+z(3)*exp(xx);
figure(1)
plot(x,y,'*',xx,yy)
legend('datos','ajuste')
title('ejercicio 1')

%ej2
% \item {\bf (40 pts.)} Puede demostrarse la siguiente igualdad para la integral definida \[\int_{-1}^1 \sqrt{1-x^2}\,dx = \frac{\pi}{2}.\] Estime el valor de $\pi$ aproximando el valor de la integral mediante las reglas compuestas de punto medio, trapecio y Simpson, empleando $700$ subintervalos. ¿Qu\'e m\'etodo a\-pro\-xi\-ma mejor el valor de $\pi$?
g=@(x)2*sqrt(1-x.^2);
M=intenumcomp(g,-1,1,700,'pm');
fprintf('Punto medio: aprox=%g\n',M)
fprintf('Punto medio: error=%g\n',abs(M-pi))
T=intenumcomp(g,-1,1,700,'trapecio');
fprintf('Trapecio: aprox=%g\n',T)
fprintf('Trapecio: error=%g\n',abs(T-pi))
S=intenumcomp(g,-1,1,700,'simpson');
fprintf('Simpson: aprox=%g\n',S)
fprintf('Simpson: error=%g\n',abs(S-pi))


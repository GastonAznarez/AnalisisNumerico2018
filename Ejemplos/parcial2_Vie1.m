%ej1
% \item  Se desea evaluar en el intervalo $[0,10]$ el polinomio $P(i)$ que interpola los datos $\lbrace(i,f(i))\rbrace_{i=1}^{10}$,
%  donde: \[ f(i)=\int_1^i \frac{2}{(3+s^2) \sqrt{s+1}} ds. \] 
% 
% \begin{enumerate}
% \item \textbf{(40 pts)} Utilice la regla compuesta del trapecio para calcular las integrales utilizando subintervalos de longitud a lo sumo de $0.045$. Construya el polinomio interpolante $P(i)$ a partir del m\'etodo de Newton y eval\'uelo con un espaciamiento de $0.05$ entre puntos. Imprima por pantalla los valores ${(i,f(i))}_{i=1}^{10}$ junto con el n\'umero y ancho de los subintervalos necesarios para realizar la integraci\'on. 
% 
% \item \textbf{(10 pts)} Realice un gr\'afico con los datos interpolados (utilice puntos discretos) y la evaluaci\'on del polinomio (con curva continua).
% \end{enumerate} 
f(1)=0; N(1)=1;
for k=2:10,
  N(k)=ceil((k-1)/0.045);
  f(k)=intenumcomp(@(s)2/((3+s^2)*sqrt(s+1)),1,k,N(k),'trapecio');
end
i=1:10;
x=0:0.05:10;
p=inewton(i,f,x);
%item a
figure(1)
plot(i,f,'*',x,p)
legend('datos','ajuste')
title('ejercicio 1')
%item b
more off
disp('datos (i,f(i))')
disp([i;f])
disp('numero y ancho de subintervalos')
disp([N;(i-1)./N])

%ej2
% \item {\bf (50 pts.)} Se realiz\'o un experimento para encontrar la constante de elasticidad $k$ de la Ley de Hooke: $F=k(l-5.3)$, donde $F$ es la fuerza requerida para estirar el resorte $l$ unidades. Se midieron las fuerzas $F(l)$ para distintas longitudes $l$ y se obtuvo la siguiente tabla:
% \begin{center} \begin{tabular}{|c|c|c|c|c|c|c|c|c|c|c|c||} \hline 
% l & 7& 8.3& 9.4& 11.3& 12.3& 14.4& 15.9 \\ \hline 
% F & 2&   3&   4&    5&    6&    8&   10 \\ \hline 
% \end{tabular} \end{center} 
% Se desea encontrar la mejor aproximaci\'on en el sentido de cuadrados m\'inimos para $k$.
% 
% Escriba la función error $E(k)$ y obtenga una fórmula para el $k$ que la minimiza. Obtenga numéricamente $k$ y grafique conjuntamente los datos de la tabla y el ajuste obtenido.
l=[7 8.3 9.4 11.3 12.3 14.4 15.9];
F=[2 3 4 5 6 8 10];
%item a
disp('E(k)=sum((k*(l-5.3)-F).^2)')
%item b
k=sum(F.*(l-5.3))/sum((l-5.3).^2)
ll=linspace(min(l),max(l),200);
figure(2)
plot(l,F,'*',ll,k*(ll-5.3))
text(7,8,'E(k)=\Sigma_{i=1}^{10}[k(l_i-5.3)-F_i]^2')
legend('datos','ajuste')
title('ejercicio 2')


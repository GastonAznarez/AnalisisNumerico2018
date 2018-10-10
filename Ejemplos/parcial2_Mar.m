%ej1
% \item Se desea graficar en el intervalo $[0,10]$ el polinomio interpolante considerando los datos $(1,f(1))$, $(2,f(2))$, $(3,f(3))$, $(4,f(4))$ y $(5,f(5))$ donde: \[ f(x)=\int_1^x \frac{1}{(1+s) \sqrt{s}} ds. \] 
% \begin{enumerate}
% \item {\bf(25 pts.)} Utilice la regla compuesta de Simpson para calcular las integrales utilizando subintervalos de longitud a lo sumo $0.05$. 
% \item {\bf (25 pts.)} Eval\'ue el polinomio de Newton que interpola los datos en 200 puntos equiespaciados en el intervalo $[0,10]$ y realice el gr\'afico. 
% \end{enumerate}
f(1)=0;
%item a
for k=2:5,
  f(k)=intenumcomp(@(s)1/((1+s)*sqrt(s)),1,k,ceil((k-1)/0.05),'simpson');
end
%item b
i=1:5;
x=linspace(0,10,200);
p=inewton(i,f,x);
figure(1)
plot(i,f,'*',x,p)

%ej2
% \item La siguiente tabla representa la distancia recorrida por un m\'ovil que se mueve en l\'inea recta para distintos tiempos: \\ 
% \begin{center} \begin{tabular}{|c|c|c|c|c|c|c|c|c|c|c|c||} \hline 
% t (seg)  & 1.0 & 2.0 & 3.0 & 4.0 & 5.0 &  6.0\\ \hline 
% x (m) & 2.8  &  4.3 &  8.5  & 14.4 &  22.2 &  28.1 \\ \hline
% \end{tabular} \end{center} 
% El polinomio interpolante en forma de Newton para estos datos es
% \[
% p(t)=c_1 + c_2(t-t_1) + c_3(t-t_1)(t-t_2) + \ldots + c_6(t-t_1) \ldots (t-t_5).
% \]
% Usando que $x_i=p(t_i)$ para $i=1,\ldots,6$, 
% \begin{enumerate}
% \item {\bf (40 pts.)} Escriba el sistema de ecuaciones y resuelva el sistema triangular para encontrar los coeficientes $c_i$. Eval\'ue el polinomio $p(t)$ y grafique junto con la tabla de valores. 
% \item {\bf (10 pts.)} Calcule los coeficientes $c_i$ usando diferencias divididas y comp\'arelos con los anteriores.
% \end{enumerate}
%item a
t=1:6;
x=[2.8 4.3 8.5 14.4 22.2 28.1];
t=t(:); x=x(:);
A(:,1)=ones(size(t));
for i=2:length(t)
  A(:,i)=A(:,i-1).*(t-t(i-1));
end
c=soltrinf(A,x);
z=linspace(min(t),max(t),100);
n=length(c);
%%%pedazo del codigo inewton
for k=1:length(z)
  p=c(n);
  for i=n-1:-1:1
    p = c(i)+(z(k)-t(i))*p;
  end
  w(k) = p;
end
%%%
figure(2)
plot(t,x,'*',z,w)

%item b
%%%pedazo del codigo inewton
cdif=x;
for j=2:n
    for i=n:-1:j
        cdif(i)=(cdif(i)-cdif(i-1))/(t(i)-t(i+1-j));
    end
end
%%%
norm(c-cdif)


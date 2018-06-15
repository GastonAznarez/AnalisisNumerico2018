function [ w ] = lab3ej4( in )

  f = @(x) 1./(1+25.*x.^2);

  z = linspace(-1,1,200);

  for n = 1:15
    
    x(1:n+1) = 2.*((1:n+1)-1) ./ n-1

    y = f(x);

    w = inewton(x,y,z);

    figure(n)
    plot(z,w,'r')
    hold on
    plot(z,f(z),'b')
    plot(x,y,'*','linewidth',5)

  end
end

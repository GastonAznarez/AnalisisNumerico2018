function w = eje5

S = load("datos_aeroCBA.dat");
year = S(:,1)';
temp = S(:,2)';
clear S;

x = [] %años con temperatura%
y = []  %temperatura conocida%
z = []  %años con temperatura desconocida%
w = [] % temperatura interpoladas%

all_year = (1957:1/3:2017);

for i = 1 : length(year)
    if isnan(temp(i)) == 0
        y = [y temp(i)];
        x = [x year(i)];
    else
        z = [z year(i)];
    endif
endfor

w = interp1(x ,y , z, 'spline','extrap');
resultado = [z' w']

w1 = interp1(x, y, all_year,'spline', 'extrap');
%%%graficas%%%
figure(1);
newplot(1);
hold on;
plot(x,y,'r.','markersize',15);
plot(all_year,w1,'y-','linewidth',3);
plot(z,w,'b.','markersize', 12);
plot(all_year,w1,'g.','markersize',8);
        

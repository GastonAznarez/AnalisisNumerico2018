function k = eje2()
	l = [7, 8.3, 9.4, 11.3, 12.3, 14.4, 15.9];
	f = [2, 3, 4, 5, 6, 8, 10];
	for i = 1 : 7
		r = sum(f(i) * (l(i) - 5.3));
		u = sum((l(i) - 5.3)^2);
	end
	k = r/u;

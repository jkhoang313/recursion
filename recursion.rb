def fibs(n)
	x = 0
	y = 1
	array = [0, 1]

	n.times do
		z = x + y
		array << z
		x = y
		y = z
	end
	print array[0..(n-1)]
end

def fibs_rec(n, array=[0], x=0, y=1)
	if n > 1
		fibs_rec(n-1, array+[y], y, x+y) 
	else
		print array
	end
end

fibs_rec(8)
fibs_rec(5)
fibs_rec(1)
fibs_rec(0)

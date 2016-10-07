def merge_sort(array)
	l = array.length
	final = []

	if l == 1		##for odd-numbered arrays
		array
	elsif l >= 2
		a, x = merge_sort(array[0..(l/2-1)]), merge_sort(array[(l/2)..l-1])
		b, y, f = 0, 0, 0
		while b < a.length && y < x.length
			if a[b] < x[y]
				final[f] = a[b]
				b+=1
			else
				final[f] = x[y]
				y+=1
			end
			f+=1
		end
		if b >= a.length
			final + x[y..(x.length-1)]
		else
			final + a[b..(a.length-1)]
		end
	end
end

print merge_sort([10, 4, 6, 2, 13, 19, 18, 20, 3])

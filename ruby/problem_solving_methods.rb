def search_array(arr, number)
	hashmap = Hash[arr.map.with_index.to_a]
	return hashmap[number]
end

p search_array([1,2,3,4,5], 3)

def fibo(num)
	i1, i2 = 0, 1
	orig1 = nil
	fib_arr = [0]

	(num-1).times do
		orig1 = i1
		i1 = i2
		i2 = orig1 + i2
		fib_arr.push(i2)
	end
	return fib_arr
end

p fibo(6)


def bubble_sort(arr)
   i = 0
   while i < arr.length
       j = i + 1
       while j < arr.length
           if arr[j] < arr[i]
               temp = arr[i]
               arr[i] = arr[j]
               arr[j] = temp
           end
           j += 1
       end
       i += 1
   end
return arr
end

p bubble_sort([1, 5, 6, 3, 2, 9, 11])

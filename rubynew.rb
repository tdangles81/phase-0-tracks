def search_array(arr, number)
	hashmap = Hash[arr.map.with_index.to_a]
	return hashmap[number]
end

p search_array([1,2,3,4,5], 3)

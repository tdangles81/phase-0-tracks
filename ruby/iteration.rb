
puts "The block is going to run"

5.times{|counter| puts "The block has run #{counter} times."}
puts "The block has completed"

#######################################

letters = ["a", "b", "c", "d", "e"]
new_letters = []

puts "Orignal data:"
p letters

letters.each do |letter|
	new_letters << letter.next
end

puts "After each.call:"
p new_letters

#
numbers = {1 => 'one', 2 => 'two'}

numbers.each do |digit, word|
	puts "#{digit} is spelled as #{word}"
end

#######################################

cities = ["Ny", "Sf", "ChicagO", "AustiN"]
new_cities = []

#Each is the same as iterating through the index, individually involking the method on each object.
new_cities = cities.each do |iteration| 
	puts iteration.swapcase
	iteration.swapcase
end

#Map! updates each object in the same array with the last argument in the method.
cities.map! do |iteration| 
	puts iteration.downcase
end

city_hash = {"NY" => "Times Square", "SF" => "Golden Gate Bridge", "Chicago" => "Wind", "Austin" => "Blues"}

city_hash.each do |city, landmark|
	puts "#{landmark} is in #{city}."
end

#######################################

num_hash = {1 => 10, 2 => 20, 3 => 30, 4 => 40, 5 => 50}
num_array = [100, 200, 300, 400, 500, 600, 700, 800, 900, 1000]
new_nums = []

#Delete keys that are above or below the given condition.
num_hash.delete_if {|key, value| key > 3}
p num_hash

num_array.delete_if {|num| new_nums << num if num < 200}
p new_nums

#Select all keys that meet the conditions
hash_if_greater = num_hash.select{|key, value| key <  3}
p hash_if_greater

condition_var = num_array.select {|num| num > 500}
p condition_var

#Keep hash keys that fit within the conditions.
keep_if_hash = num_hash.keep_if {|key, value| key <= 3}
p keep_if_hash

keep_if_var = num_array.keep_if {|num| num > 500}
p keep_if_var

#Rejects keys that are included in the range.
reject_hash = num_hash.reject{|key, value| key < 2}
p reject_hash

reject_var = num_array.reject {|num| num > 800}
p reject_var



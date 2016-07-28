puts "Add an equation with the format: '1 + 5'. Program performs sum, difference, and product calculations."
init_input = gets.chomp
$calculations_store = []

def calculator(num1, operator, num2)

	if operator == '+'
		new_sum = num1.to_i + num2.to_i
		puts new_sum
	elsif operator == '-'
		new_sum = num1.to_i - num2.to_i
		puts new_sum
	elsif operator == '*'
		new_sum = num1.to_i * num2.to_i
		puts new_sum
	else 
		puts "Your math could use some work, or program doesn't handle this kind of equation. Try again."
	end
	$calculations_store << new_sum
end

def convert_to_equation(input)
	equation_store = []

	while input != 'done'
		equation_store << input
		p equation_store
		string_to_convert = input.split(' ')
		p string_to_convert
		calculator(string_to_convert[0], string_to_convert[1], string_to_convert[2])
		"Add a new equation with the format: '1 + 5'. Input 'done' to check eq'ns."
		input = gets.chomp
	end

	puts "Calculations performed:"
	count = 0
	while count < equation_store.length
		puts "#{equation_store[count]} = #{$calculations_store[count]}"
		count += 1
	end
end

convert_to_equation(init_input)



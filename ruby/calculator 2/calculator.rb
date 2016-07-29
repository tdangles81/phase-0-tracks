puts "Add an equation with the format: '1 + 5'. Program performs sum, difference, and mean."
init_input = gets.chomp

def calculator(input)
	equation_store = []
	calculations_store = []

	while input != 'done'

	equation_store << input
	p equation_store
	formatted_input = input.split(' ')

	if formatted_input[1] == '+'
		new_sum = formatted_input[0].to_i + formatted_input[2].to_i
		puts new_sum
	elsif formatted_input[1] == '-'
		new_sum = formatted_input[0].to_i - formatted_input[2].to_i
		puts new_sum
	elsif formatted_input[1] == '*'
		new_sum = formatted_input[0].to_i * formatted_input[2].to_i
		puts new_sum
	else 
		puts "Your math could use some work, or program doesn't handle this kind of equation. Try again."
	end

	calculations_store << new_sum
	p calculations_store
	puts "Add a new equation with the format: '1 + 5'. Input 'done' to check eq'ns."
	input = gets.chomp
	end

	puts "Calculations performed:"
	count = 0
	while count < equation_store.length
		puts "#{equation_store[count]} = #{calculations_store[count]}"
		count += 1
	end
end

p calculator(init_input)
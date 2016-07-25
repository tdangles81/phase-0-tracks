puts "Create a new secret agent name: "
inputted_name = gets.chomp
vowels = %w[aeiou]
normal_name = []
new_name = []
updated_name = []

def nameswap(name)
	normal_name = []
	hidden_name = []

	while name != 'exit'
		normal_name << name
		puts "Your old boring name is: #{name}"
		new_name = name.split("")
		new_name.each do |char|
			if char == 'a'
				char.replace('e')
			elsif char == 'e'
				char.replace('i')
			elsif char == 'i'
				char.replace('o')
			elsif char == 'o'
				char.replace('u')
			elsif char == 'u'
				char.replace('a')
			else
				char
			end
		end

		temp_name = new_name.join("")
		split_name = temp_name.split(' ')

		first_name = split_name[0].gsub!(/[^aeiou]/){|char| char.next}
		last_name = split_name[1].gsub!(/[^aeiou]/){|char| char.next}

		secret_changed_name = last_name, first_name
		new_secret_name = secret_changed_name.join(" ")
		puts "Your new secret agent name is: #{new_secret_name}"
		hidden_name << new_secret_name
		puts "Create a new secret agent name, or else input 'exit' to review data."
		name = gets.chomp
	end

	count = 0 
	while count < normal_name.length
		puts "#{hidden_name[count]}'s real name is actually #{normal_name[count]}."
		count += 1
	end
end

p nameswap(inputted_name)
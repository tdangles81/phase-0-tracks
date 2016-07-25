#Algorith takes user string input and stores original input,
#and advances all non-vowel characters to next character in the alphabet.
#The algorithm also iterates through user input, looking for vowel characters,
#replacing vowels with the next vowel character (i.e cats -> cets). 
#Stores the converted strings in an array, and outputs both the original
#and manipulated strings.

puts "Create a new secret agent name: "
inputted_name = gets.chomp

#---------------->main method responsible for all string manipulations.

def nameswap(name)
	normal_name = []
	hidden_name = []

#--------------->main loop responsible for iterating characters.

	while name != 'exit'
#---------------> store original input in an array.
		puts "Your old boring name is: #{name}"
		normal_name << name
		new_name = name.split("")

#---------------> iterate through input characters, replacing vowels with next vowel.
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

#---------------> format new array of characters to original format, then store first an last name.
		temp_name = new_name.join("")
		split_name = temp_name.split(' ')

		first_name = split_name[0].gsub!(/[^aeiou]/){|char| char.next}
		last_name = split_name[1].gsub!(/[^aeiou]/){|char| char.next}

#---------------> switch position of first and last name, convert back to string, then store.
		secret_changed_name = last_name, first_name
		new_secret_name = secret_changed_name.join(" ")
		puts "Your new secret agent name is: #{new_secret_name}"
		hidden_name << new_secret_name
		puts "Create a new secret agent name, or else input 'exit' to review data."
		name = gets.chomp
	end

#---------------> outputs data of original array and new string array at identical indexes.
	count = 0 
	while count < normal_name.length
		puts "#{hidden_name[count]}'s real name is actually #{normal_name[count]}."
		count += 1
	end
end

#--------------->TEST

p nameswap(inputted_name)
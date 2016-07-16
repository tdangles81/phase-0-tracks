def vampire_detector
	final_line = "Actually, never mind! What do these questions have to do with anything? Let's all be friends."

	puts "How many employees are taking the survey?"
	employeenum = gets.chomp
	newemployeenum = employeenum.to_i
	until newemployeenum <= 0
		puts "Whats your name?"
		name = gets.chomp
		puts "Ok, your name is #{name}."

		puts "What year were you born?"
		year = gets.chomp
		puts "Ok, you were born in #{year}."

		puts "What's your age then?"
		age = gets.chomp
		puts "Ok, you are #{age} years old."

		puts "Would you like to enroll in our ensurance program (y/n)?"
		insurancebool = gets.chomp

		puts "Do you hate garlic bread (y/n)?"
		garlicbool = gets.chomp

		puts "Add allergies. Input 'done' when complete."
		while allergylist = gets.chomp
			case allergylist
			when "sunshine"
				break
			when "done"
				break
			end
		end

		new_age = age.to_i
		new_year = year.to_i

		if (name == "Drake Cula" || name == "Tu Fang")
			puts "Definitely a vampire."
		elsif new_age == (2016 - new_year) && (insurancebool == "y" || garlicbool == "n")
			puts "Probably not a vampire."
		elsif new_age != (2016 - new_year) && (insurancebool == "n" && garlicbool == "y")
			puts "Almost certainly a vampire."
			puts final_line
		elsif new_age != (2016 - new_year) && (insurancebool == "n" || garlicbool == "y")
			puts "Probably a vampire."
		elsif
			puts "Results are inconclusive."
		elsif allergylist == "sunshine"
			puts "Probably a vampire."
		end
	puts "Employee number #{employeenum}"
	newemployeenum -=1
	end
	puts final_line
end

puts vampire_detector
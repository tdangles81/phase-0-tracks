puts "Name:"
user_name = gets.chomp
puts "Age:"
user_age = gets.chomp
puts "Email:"
children = gets.chomp
puts "Phone number:"
phone = gets.chomp
puts "Favorite color of blue:"
color = gets.chomp

#Create hash key value pairs for user info.
form_user = {
	01 => "#{user_name}",
	02 => "#{user_age}",
	03 => "#{children}",
	04 => "#{phone}",
	05 => "#{color}"
}

selection_form = ["Paisley", "Chevrons", "Photorealistic", "Abstract"]

def hash_form(selection)
	puts "Do you prefer #{selection} wallpaper?"
	input_response = gets.chomp

	if input_response ==  'y'
		input_response = true
	elsif input_response == 'n'
		input_response == false
	end
	input_response
end

#Iterate through the array of possible styles, adding the responses to the hash (form_user)
selection_form.each{ |wallpaper_style| form_user["#{wallpaper_style}"] = hash_form("wallpaper_style")}
p form_user

puts "Would you like to change any of your answers such as 'name', 'age', 'email', 'phone', or 'fcolor'? If not, type 'n'."
updated = gets.chomp
case updated 
when "name"
	puts "Whats your updated name?"
	new_name = gets.chomp
	form_user.inject {|key, value| form_user[01] = new_name}
	p form_user
when "age"
	puts "Whats your updated age?"
	new_name = gets.chomp
	form_user.inject {|key, value| form_user[02] = new_name}
	p form_user
when "email"
	puts "Whats your updated email?"
	new_name = gets.chomp
	form_user.inject {|key, value| form_user[03] = new_name}
	p form_user
when "phone"
	puts "Whats your updated phone?"
	new_name = gets.chomp
	form_user.inject {|key, value| form_user[04] = new_name}
	p form_user
when "fcolor"
	puts "Whats your updated fcolor?"
	new_name = gets.chomp
	form_user.inject {|key, value| form_user[05] = new_name}
	p form_user
else
	puts "Invalid input"
end





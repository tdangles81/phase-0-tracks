#Program takes user input and a selected password security level
#in order to create a truly secure 4-16 hex password. It stores the 
#user and their generated password level once, prints the password,
#then completely deletes the password forever.

require 'sqlite3'
require 'faker'
require 'securerandom'

class PassBurner

	userdb = SQLite3::Database.new("user.db")
	userdb.results_as_hash = true

	create_user_table = <<-SQL
	CREATE TABLE IF NOT EXISTS user(
		id INTEGER PRIMARY KEY,
		name VARCHAR(255),
		pass_id INT, 
		FOREIGN KEY (pass_id) REFERENCES passwords(id)
	)
	SQL

	create_pass_table = <<-SQL
	  CREATE TABLE IF NOT EXISTS passwords(
	    id INTEGER PRIMARY KEY,
	    pass VARCHAR(255)
	  )
	SQL

	crackable = SecureRandom.hex(4)
	non_crackable = SecureRandom.hex(16)

	generate_random_insecure = <<-SQL
		UPDATE passwords SET pass = '#{crackable}' WHERE id = 1
	SQL

	generate_random_secure = <<-SQL
		UPDATE passwords SET pass = '#{non_crackable}' WHERE id = 2
	SQL

	puts "Input your name: "
	input = gets.chomp
	puts "Input '1' for a semi-secure password and '2' for very secure: "
	pass_input = gets.chomp

	insert_user_data = <<-SQL
		INSERT INTO user(name, pass_id) VALUES ("#{input}", "#{pass_input}")
	SQL

	show_generated_pw = <<-SQL
		SELECT * FROM passwords['pass'] WHERE id = "#{pass_input}"
	SQL

	# create a kittens table (if it's not there already)
	userdb.execute(create_user_table)
	userdb.execute(create_pass_table)
	userdb.execute(generate_random_insecure)
	userdb.execute(generate_random_secure)
	userdb.execute(insert_user_data)

	current_users = userdb.execute("SELECT * FROM user")
	current_users.each do |selected|
		puts "#{selected['name']} chose the #{selected['pass_id']} password security level."
	end

	puts "YOUR GENERATED PW IS: "
	puts userdb.execute(show_generated_pw)

end

p PassBurner.new()
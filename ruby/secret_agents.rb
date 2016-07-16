=begin
PSEUDOCODE FOR ENCRYPT METHOD
set a counter to 0
set a variable with an empty string
create a loop to iterate through each character in the string, using the length of the string
the loop should end when the counter number is greater or equal to the length of the string
the string variable is assigned the next character at the current index that corresponds with the counter number
increment the counter by 1
when the loop is done, return the updated string 
call the method to test with different arguments
=end
	


def encrypt(str)
	counter = 0
	encrypted_string = ""
	until counter >= str.length
		if str[counter] == "z"
			encrypted_string += "a"
		else
			encrypted_string += str[counter].next
		end
		counter +=1
	end
	encrypted_string
end


# encrypt("abc")
# encrypt("zed")


=begin
PSEUDOCODE FOR DECRYPT METHOD
set a counter to 0
set a variable with an empty string
create a loop to iterate through each character in the string, using the length of the string
the loop should end when the counter number is greater or equal to the length of the string
the string variable is assigned the previous character at the current index that corresponds with the counter number
since there is no built-in method for that, an alphabet string needs to be defined to figure out how to call the previous character
increment the counter by 1
when the loop is done, return the updated string 
call the method to test with different arguments
=end


#before_index = alphabet.index(letter)-1
#before_letter = alphabet[before_index]

def decrypt(str)
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	counter = 0 
	decrypted_string = ""
	until counter >= str.length
		decrypted_string += alphabet[alphabet.index(str[counter])-1]
		counter +=1
	end
	decrypted_string
end


# decrypt("bcd")
# decrypt("afe")


# decrypt(encrypt("swordfish"))

# The encrypt method is called first on the string passed through the method
# This shifts all characters in the string forward in the alphabet by one letter
# The decrypt method is called second, since the encrypt method is passed through it
# This negates the encrypt method's changes
# This is because the decrypt method shifts the characters back n the alphabet by one letter


=begin
PSEUDOCODE FOR USER INTERFACE
Take the user's input, asking them to use the keywords "encrypt" or "decrypt"
Take password from user and run the method based on which keyword (encrypt/decrypt) user typed 
Run method and print result to the screen 
=end

puts "Would you like to encrypt or decrypt a password? (Type 'encrypt' or 'decrypt')"
user_choice = gets.chomp 
puts "Type the password  you would like to encrypt or decrypt."
password = gets.chomp

if user_choice == "decrypt"
	puts decrypt(password)
elsif user_choice == "encrypt"
	puts encrypt(password)
end
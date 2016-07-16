puts "What's your name?"
name = gets.chomp

puts "What's your preferred volume level? (1-10)"
volume_level = gets.chomp
until volume_level.to_i <= 10
  puts "Invalid input. What's your preferred volume level? (1-10)"
  volume_level = gets.chomp
end

puts "What's your favorite fur color?"
fur_color = gets.chomp

puts "Is this hamster a good candidate for adoption? (y/n)"
adoption_candidate = gets.chomp


puts "Around what age?"
age = gets.chomp
if age == ""
  age = nil
  puts "Unknown"
end
age.to_i

puts "Name = #{name}"
puts "Preferred volume level = #{volume_level}"
puts "Favorite fur color = #{fur_color}"
puts "Good candidate for adoption = #{adoption_candidate}"
puts "Age = #{age}"
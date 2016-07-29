class Santacon
	attr_accessor :age, :gender, :reindeer_ranking, :ethnicity
	@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	@age = 0

	def initialize
		puts "Initializing Santa instance..."
		@gender = ["male", "female", "bi", "transgender", "cisgender"]
		@ethnicity = ["elf", "redguard", "orc", "jewish"]
	end

	def speak
		puts "Ho ho ho!"
	end

	def eat_milk_and_cookies(cookie)
		puts "Darn that was a good #{cookie}!- Santa"
	end

	def celebrate_birthday
		age = rand(1..139)
		@age = age
		puts "Santa's new random age is #{@age}!"
	end

	def get_mad_at(reindeer)
		rank = reindeer_ranking[0]
		@reindeer_ranking = rank
		puts "Swat! Your reindeer rank is now #{@reindeer_ranking} #{reindeer}!"
	end
end

def rand_santa
	count = 0
	while count < 10
		puts "You've create a super santa with random attributes: "
		santacon = Santacon.new
		puts "Gender: #{santacon.gender.sample}"
		puts "Ethnicity: #{santacon.ethnicity.sample}"
		santacon.celebrate_birthday
		count += 1
	end
end

rand_santa

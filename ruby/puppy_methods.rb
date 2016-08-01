class Puppy

	def initialize
		puts "Initializing new puppy instance..."
	end

	 def fetch(toy)
	    puts "I brought back the #{toy}!"
	    toy
	  end

	  def speak(times)
	  	times.to_i.times do |i|
	  		puts "Woof!"
	  	end
	  end

	  def roll_over
	  	puts "*rolls over"
	  end

	  def dog_years(years)
	  	converted_years = years.to_i * 7
	  	puts converted_years
	  end

	  def feed_dog(bool)
	  	if bool = true
	  		puts "Woof woof, *licks lips."
	  	elsif bool = false
	  		puts "Pout pout, *sad dog face."
	  	end
	  end
end

puppy = Puppy.new
puppy.fetch("stick")
puppy.speak(10)
puppy.dog_years(10)
puppy.feed_dog(true)

#Custom---------------
#custom class - created a class that selects a guitar at random.
#pairs the guitar with randomly selected tone that should be played.
#creates several instances of the class.
#iterates through each instance and calls methods with ObjectSpace.each_object.

class GuitarSelector

	@@instances = []

	def initialize
		puts "Initializing Guitar method values..."
		@guitar_types = ["Gibson", "Jackson", "Fender", "PRS", "Dean", "Martin"]
		@guitar_sounds = ["Rock", "Metal", "Blues", "Jazz", "Deathcore", "Folk"]
	end

	def guitar_types
		rand_selection = rand(0...6)
		puts "Selected guitar that will be used for the gig is a #{@guitar_types[rand_selection]}."
		@guitar_types = @guitar_types[rand_selection]
	end

	def guitar_tones
		rand_selection = rand(0...6)
		puts "The audience thinks the #{@guitar_types} should only played with a #{@guitar_sounds[rand_selection]} tone."
		@guitar_sounds = @guitar_sounds[rand_selection]
	end
end

50.times do
	guitars = GuitarSelector.new
end

ObjectSpace.each_object GuitarSelector do |obj|
	obj.guitar_types
	obj.guitar_tones
end


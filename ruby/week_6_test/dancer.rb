class Dancer

	attr_writer :age
	attr_reader :dancer_name

	def initialize(name, age)
		@dancer = name
		@age = age
		@dancer_name = []
	end

	def name
		@dancer
	end

	def age
		@age
	end

	def pirouette
		@piroutette = "*twirls*"
	end

	def bow
		@bow = "*bows*"
	end

	def queue_dance_with(name)
		@dancer_name << name
		@name_queue = name

	end

	def card
		@dancer_name
	end

	def begin_next_dance
		dance = "Now dancing with #{@dancer_name.shift}."
		dance
	end

	def do_a_headstand
		move = "The dancer decides to headstand!"
		move
	end
end
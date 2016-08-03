class Dancer

	attr_reader :name
	attr_accessor :age

	def initialize(name, age)
		@name = name
		@age = age
		@dancer_name = []
	end

	def pirouette
		"*twirls*"
	end

	def bow
		"*bows*"
	end

	def queue_dance_with(name)
		@dancer_name << name
		name
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
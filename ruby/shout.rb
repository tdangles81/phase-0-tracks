# module Shout
# 	def self.yell_angrily(words)
# 		words + "!!!!" + " :("
# 	end

# 	def self.yell_happily(words)
# 		words + "!!!!" + " woohoo!"
# 	end
# end

# puts Shout.yell_angrily("Argh")
# puts Shout.yell_happily("Woo")

module Shout
	def yell_happily(words)
		words + "!!!!" + " woohoo!"
	end

	def yell_angrily(words)
		words + "!!!!" + " :("
	end
end

class CryingBaby
	include Shout
end

class GotJob
	include Shout
end

crying = CryingBaby.new
puts crying.yell_happily("Googoo gaga")
puts crying.yell_angrily("Wahhh")

got_job = GotJob.new
puts got_job.yell_happily("I got it")
puts got_job.yell_angrily("I demanded too much money")

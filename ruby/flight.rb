module Flight
	def take_off(altitude)
		puts "Taking off and ascending until reaching altitude #{altitude}..."
	end
end

class Bird
	include Flight
end

class Plane
	include Flight
end

bird = Bird.new
bird.take_off(10000)

plane = Plane.new
plane.take_off(20000)
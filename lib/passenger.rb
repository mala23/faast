class Passenger

	# the initialize method is always called when you create 
	# a new class by typing Passenger.new

	def initialize
		# all instance variables must begin with "@"
		# this must be an instance variable because we will use it
		# in other methods
		@touched_in = false
	end

	def touched_in?
		@touched_in == true
	end

	def touch_in(station)
		@touched_in = true
		station.enter
	end

end
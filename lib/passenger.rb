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

	def board(coach)
		@boarded = true
		coach.pick_up(self)
	end

	def boarded?
		@boarded == true
	end

	def alight(coach)
		@boarded = false
		coach.drop_off(self)
	end

end
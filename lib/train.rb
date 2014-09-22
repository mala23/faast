class Train

	DEFAULT_CAPACITY = 10

	def initialize(options = {})
		@capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
	end

	def coaches
		@coaches ||= []
	end

	def coach_count
		coaches.count
	end

	def capacity
		@capacity ||= DEFAULT_CAPACITY
	end

	def capacity(value)
		@capacity ||= value
	end

	def full?
		coach_count == @capacity
	end

	def hookup(coach)
		coaches << coach
	end

	def leave(station)
		station.delete(self)
	end

	def arrive(station)
		station.dock(self)
	end

end
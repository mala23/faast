class Coach

	DEFAULT_CAPACITY = 10

	def passengers
		@passengers ||= []
	end

	def passenger_count
		passengers.count
	end

	def pickup(passenger)
		passengers << passenger
	end

	def capacity
		@capacity ||= DEFAULT_CAPACITY
	end

	def capacity(value)
		@capacity ||= value
	end

	def full?
		passenger_count == @capacity
	end

end
class Coach

	DEFAULT_CAPACITY = 40

	def initialize(capacity=40)
		@capacity = capacity
		@passengers = []
	end

	def passengers
		@passengers ||= []
	end

	def passenger_count
		passengers.count
	end

	def pick_up(passenger)
		raise "There's no free seat on this coach" if full?
		@passengers << passenger
	end

	def drop_off(passenger)
		@passengers.delete(passenger)
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
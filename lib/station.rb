class Station

	def initialize
		@waiting_passengers = []
	end

	def waiting_passengers
		@waiting_passengers ||= []
	end

end
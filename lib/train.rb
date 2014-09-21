class Train

	def coaches
		@coaches ||= []
	end

	def coach_count
		coaches.count
	end

end
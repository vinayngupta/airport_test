class Airport
	attr_accessor :planes
	
	def initialize planes = [ ]
		@planes = planes

	end

	def has_planes?
		!@planes.empty?
	end

	#def approves_flying_conditions
	# 	false
	# end 

	# def checks_good_weather
	# 	true
	# end

	def is_full?
		planes.length == 10
		
	end

	# def plane_takes_off
	# 	true
	# end

	def plane_lands
		raise "Sorry no slots available." if is_full?
	
	end

	



end
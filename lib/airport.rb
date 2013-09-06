require 'bomb'
require 'weather'
require 'plane'

class Airport
	attr_accessor :planes
	
	def initialize planes = [ ] 
		@planes = planes
	end

	def has_planes?
		!@planes.empty?
	end

	def has_capacity?
		true if planes.length < 3
	end

	def has_no_capacity
		raise "No slots" if !has_capacity?
	end

	def plane_take_off
		if no_bomb_threat && sunny
			@flying_planes = Array.new << planes.pop
		end

	end

	def plane_lands
		if has_capacity? && no_bomb_threat && sunny
			planes << @flying_planes.pop
		end
	end

end
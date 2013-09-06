class Weather
	attr_reader :sunny


	def initialize sunny = true
		@sunny = sunny 
	end

	def sunny_forecast
		[true, false].sample
		sunny if true
	end

	def stormy_forecast
		!sunny_forecast
	end

end

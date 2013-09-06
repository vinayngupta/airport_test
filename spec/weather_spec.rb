require 'weather'

describe Weather do

	it 'can be sunny' do
		weather = Weather.new
		expect(weather.sunny_forecast).to be_true
	end

	it 'can be stormy' do
		weather = Weather.new
		expect(weather.stormy_forecast).to be_false
	end

end

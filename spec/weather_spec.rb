require 'weather'

describe Weather do

	it 'can be sunny' do
		weather = Weather.new
		expect(weather.sunny?).to be_true
	end

	it 'can be stormy' do
		weather = Weather.new
		weather.stormy!
		expect(weather.stormy!).to be_true
	end

end

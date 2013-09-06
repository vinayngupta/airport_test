require 'plane'

describe Plane do

	it 'takes off' do
		plane = Plane.new
		expect(plane.takes_off).to be_true
	end

	it 'lands' do
		plane = Plane.new
		expect(plane.lands).to be_true
	end



end

#upon reflection I'm not convinced a Plane class is even needed 
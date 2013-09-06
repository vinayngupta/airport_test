require 'airport'

describe Airport do
	let(:airport) {Airport.new}

	it 'has no planes' do
		expect(airport).not_to have_planes
	end

	it 'has planes' do
		airport = Airport.new [:plane]
		expect(airport).to have_planes
	end

	it 'has no planes after taking off' do
		expect(airport).not_to have_planes 
	end

	
	it 'can contain up to two planes' do
		airport = Airport.new ([:plane] *2)
		expect(airport.has_capacity?).to be_true
	end


	it 'does not allow planes to land if no capacity' do
		airport = Airport.new ([:plane] *3)
		expect{airport.has_no_capacity}.to raise_error "No slots"
	end


end
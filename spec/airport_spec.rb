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

	
	it 'can contain ten planes' do
		airport = Airport.new ([:plane] *11)
		expect(airport.is_full?).to be_true
	end


	it 'does not allow planes to land if full' do
		airport = Airport.new ([:plane] *10)
		airport.plane_lands
		expect{airport.plane_lands}.to raise_error "Sorry try again, no landing slots available."
	end



	# it 'allows activity if no bomb scare' do

	# 	expect(airport.bomb_scare).to eq nil
	# end

	

end
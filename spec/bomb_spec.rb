require 'bomb'

describe Bomb do

	it 'threat is on' do
		expect(subject.bomb_threat!).to be_true
	end

	it 'threat is off' do
		expect(subject.no_bomb_threat).to be_false
	end

end
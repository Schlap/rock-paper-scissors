require 'player'

describe Player do

	it 'has a default name' do
		player = Player.new(name: 'Default')
		expect(player.name).to eq 'Default'
	end

	it 'has a name' do
		player = Player.new(name: 'Hadi')
		expect(player.name).to eq 'Hadi'
	end
end
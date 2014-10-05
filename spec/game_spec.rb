require 'game'

describe Game do

	let(:game){Game.new}
	let(:player){double :player}

	it 'should add a player' do
		game.add(player)
		expect(game.player_count).to eq 1
	end
end
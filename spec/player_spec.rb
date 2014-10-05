require 'player'

describe Player do

	let(:player){Player.new}

	it 'has a default name' do
		player = Player.new(name: 'Default')
		expect(player.name).to eq 'Default'
	end

	it 'has a name' do
		player = Player.new(name: 'Hadi')
		expect(player.name).to eq 'Hadi'
	end

	it "should be able to choose rock" do
		expect(player.choose_rock).to eq "rock"
	end

	it "should be able to choose paper" do
		expect(player.choose_paper).to eq "paper"
	end

	it "should be able to choose scissors" do
		expect(player.choose_scissors).to eq "scissors"
	end
end
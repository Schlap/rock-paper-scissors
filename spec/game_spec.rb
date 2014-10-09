require 'game'

describe Game do
  
let(:game){Game.new(player)}
let(:player){double :player}


    it 'should choose a weapon' do
        game.pick_weapon
        expect(["rock", "paper", "scissors"]).to include game.pick_weapon
    end

    it 'should choose rock and beat scissors' do
        game.weapon = "rock"
        allow(player).to receive(:picks){"scissors"}
        expect(game.winner).to eq "Game wins"
    end

    it 'should choose rock and lose to paper' do
        game.weapon = "rock"
        allow(player).to receive(:picks){"paper"}
        expect(game.winner).to eq "Player wins"
    end

    it "should choose paper and beat rock" do
        game.weapon = "paper"
        allow(player).to receive (:picks){"rock"}
        expect(game.winner).to eq "Game wins"
    end

    it "should choose paper and lose to scissors" do
        game.weapon = "paper"
        allow(player).to receive (:picks){"scissors"}
        expect(game.winner).to eq "Player wins"
    end

    it "should choose scissors and beat paper" do
        game.weapon = "scissors"
        allow(player).to receive (:picks){"paper"}
        expect(game.winner).to eq "Game wins"
      end

    it "should choose scissors and lose to rock" do
        game.weapon = "scissors"
        allow(player).to receive (:picks){"rock"}
        expect(game.winner).to eq "Player wins"
    end

    it "should draw when player picks same sign" do
        game.weapon = "rock"
        allow(player).to receive (:picks){"rock"}
        expect(game.same_pick).to eq "It's a draw!"
      end
  end
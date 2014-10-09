describe Player do
  
let(:player){Player.new}


  it "should choose a sign" do
      player.picks("rock")
      expect(player.weapon).to eq "rock"
      end
end
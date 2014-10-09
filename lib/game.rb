require_relative 'player'

class Game

      attr_accessor :weapon

    def initialize(player)
        @player = player
        @weapon
    end

    def pick_weapon
        @weapon = ["rock", "paper", "scissors"].sample
    end

    def winner
        if self.weapon == "rock" && @player.picks == "scissors"
          "Game wins"
        elsif self.weapon == "rock" && @player.picks == "paper"
          "Player wins"
        elsif self.weapon == "paper" && @player.picks == "rock"
          "Game wins"
        elsif self.weapon == "paper" && @player.picks == "scissors"
          "Player wins"
        elsif self.weapon == "scissors" && @player.picks == "paper"
          "Game wins"
        else self.weapon == "scissors" && @player.picks == "rock"
          "Player wins"
     end
  end

        def same_pick
          if self.weapon = @player.picks
            "It's a draw!"
        end
    end
end
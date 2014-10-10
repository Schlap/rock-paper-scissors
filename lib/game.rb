require_relative 'player'

class Game

      attr_accessor :weapon, :winner

    def initialize(player)
        @player = player
        @weapon
    end

    def pick_weapon
        @weapon = ["rock", "paper", "scissors"].sample
    end

    def winner
        if self.weapon == "rock" && @player.picks(weapon) == "scissors"
          "Game"
        elsif self.weapon == "rock" && @player.picks(weapon) == "paper"
          "Player"
        elsif self.weapon == "paper" && @player.picks(weapon) == "rock"
          "Game"
        elsif self.weapon == "paper" && @player.picks(weapon) == "scissors"
          "Player"
        elsif self.weapon == "scissors" && @player.picks(weapon) == "paper"
          "Game"
        else self.weapon == "scissors" && @player.picks(weapon) == "rock"
          "Player"
     end
  end

        def same_pick
          if self.weapon == @player.picks(weapon)
            "It's a draw!"
        end
    end
end
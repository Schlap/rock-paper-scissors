class Game

	attr_accessor :player

	def initialize
		self.player = []
	end

	def add(player)
		self.player << player
	end

	def player_count
		self.player.count
	end
end
class Player

	attr_accessor :name, :sign

	def initialize(name: 'Default')
		@name = name
		self.sign = ["rock", "paper", "scissors"]
	end

	def choose_rock
		self.sign[0]
	end

	def choose_paper
		self.sign[1]
	end

	def choose_scissors
		self.sign[2]
	end
end
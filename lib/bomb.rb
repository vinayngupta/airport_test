class Bomb

	def initialize bomb = false
		@bomb = bomb
	end

	def no_bomb_threat
		bomb = false
	end

	def bomb_threat!
		!no_bomb_threat
	end

end
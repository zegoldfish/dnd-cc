class Experience
	def calculate_available_experience(character)
		spent_exp = 0
		character.character_classes.each do |cc|
			spent_exp += Level.find(cc.level).experience_points.to_i
		end

		character.experience_points - spent_exp
	end
end
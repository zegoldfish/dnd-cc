class AddCharacterClassColumntoCharacters < ActiveRecord::Migration
	def up
		add_column :characters, :character_class_id, :integer
	end

	def down
		remove_column :characters, :character_class_id
	end
end

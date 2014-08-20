class AddColumnRaceIdtoCharacter < ActiveRecord::Migration
	def up
		add_column :characters, :race_id, :integer
	end

	def down
		remove_column :characters, :race_id
	end
end

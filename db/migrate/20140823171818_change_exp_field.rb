class ChangeExpField < ActiveRecord::Migration
	def up
		remove_column :characters, :experience_points
		add_column :character_classes, :experience_points, :integer
	end

	def down
		remove_column :character_classes, :experience_points
		add_column :characters, :experience_points, :integer
	end
end

class AddExperiencePointstoCharacters < ActiveRecord::Migration
  def change
  	add_column :characters, :experience_points, :integer
  end
end

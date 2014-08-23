class CreateLevels < ActiveRecord::Migration
  def change
    create_table :levels do |t|
    	t.integer :experience_points
    	t.timestamps
    end
  end
end

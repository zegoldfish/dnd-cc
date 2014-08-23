class AddDefaultToCharExp < ActiveRecord::Migration
  def change
  	change_column :characters, :experience_points, :integer, { defult: 0 }
  end
end

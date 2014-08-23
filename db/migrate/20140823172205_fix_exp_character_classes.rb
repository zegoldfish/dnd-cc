class FixExpCharacterClasses < ActiveRecord::Migration
  def change
  	remove_column :character_classes, :experience_points
  	add_column :character_classes, :level, :integer, { after: :character_class_type_id }
  end
end

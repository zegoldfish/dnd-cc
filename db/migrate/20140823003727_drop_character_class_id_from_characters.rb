class DropCharacterClassIdFromCharacters < ActiveRecord::Migration
  def change
  	remove_column :characters, :character_class_id
  end
end

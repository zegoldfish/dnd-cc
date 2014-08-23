class DropCharacterClasses < ActiveRecord::Migration
  def change
  	drop_table :character_classes
  end
end

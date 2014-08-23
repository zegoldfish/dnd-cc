class ChangeCharacterClassDataType < ActiveRecord::Migration
  def change
  	change_column :character_class_types, :character_class_name, :string
  end
end

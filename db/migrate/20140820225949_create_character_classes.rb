class CreateCharacterClasses < ActiveRecord::Migration
  def change
    create_table :character_classes do |t|
    	t.string :character_class_name
      t.timestamps
    end
  end
end

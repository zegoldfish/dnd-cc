class CreateCharacterClasses < ActiveRecord::Migration
  def change
    create_table :character_classes do |t|
    	t.integer :character_id
    	t.integer :character_class_type_id
	    t.timestamps
    end
  end
end

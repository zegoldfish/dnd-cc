class CreateCharacterClassTypes < ActiveRecord::Migration
  def change
    create_table :character_class_types do |t|
    	t.integer :character_class_name
	    t.timestamps
    end
  end
end

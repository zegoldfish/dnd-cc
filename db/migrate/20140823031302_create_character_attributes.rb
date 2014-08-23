class CreateCharacterAttributes < ActiveRecord::Migration
  def change
    create_table :character_attributes do |t|
    	t.integer :character_attribute_type_id
    	t.string :attribute_value
	    t.timestamps
    end
  end
end

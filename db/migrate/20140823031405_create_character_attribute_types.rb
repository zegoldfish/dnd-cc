class CreateCharacterAttributeTypes < ActiveRecord::Migration
  def change
    create_table :character_attribute_types do |t|
    	t.string :attribute_name
    	t.text :description
	    t.timestamps
    end
  end
end

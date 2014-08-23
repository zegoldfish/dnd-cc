class CreateCharacterBackgrounds < ActiveRecord::Migration
  def change
    create_table :character_backgrounds do |t|
    	t.integer :character_id
    	t.integer :background_id
	    t.timestamps
    end
  end
end

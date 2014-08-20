class CreateTableCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
    	t.integer :player_id
    	t.text :character_name
    end
  end
end

class CreateRaceAttributes < ActiveRecord::Migration
  def change
    create_table :race_attributes do |t|
    	t.integer :race_attribute_type_id
    	t.integer :value
    	t.timestamps
    end
  end
end

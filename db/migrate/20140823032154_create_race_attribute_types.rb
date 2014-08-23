class CreateRaceAttributeTypes < ActiveRecord::Migration
  def change
    create_table :race_attribute_types do |t|
    	t.string :race_attribute_type
    	t.string :description
	    t.timestamps
    end
  end
end

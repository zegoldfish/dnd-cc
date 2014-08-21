class CreateItemTypes < ActiveRecord::Migration
  def change
    create_table :item_types do |t|
    	t.string :item_type_name
      t.timestamps
    end
  end
end

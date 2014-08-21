class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
    	t.string :item_name
    	t.integer :item_type_id
      t.timestamps
    end
  end
end

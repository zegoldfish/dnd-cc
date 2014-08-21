class CreateBackgrounds < ActiveRecord::Migration
  def change
    create_table :backgrounds do |t|
    	t.string :background_name
      t.timestamps
    end
  end
end

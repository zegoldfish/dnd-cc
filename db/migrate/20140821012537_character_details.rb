class CharacterDetails < ActiveRecord::Migration
  def change
  	add_column :characters, :sex, :string
  	add_column :characters, :height, :integer
  	add_column	:characters, :alignment_id, :integer
  end
end

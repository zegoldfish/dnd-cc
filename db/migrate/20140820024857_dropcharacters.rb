class Dropcharacters < ActiveRecord::Migration
  def change
  	drop_table :characters
  end
end

class AlterTableCharactersAddTimeStamps < ActiveRecord::Migration
  def change
  	add_timestamps :characters
  end
end

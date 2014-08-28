class AddValueToCharacterSkill < ActiveRecord::Migration
  def change
    add_column :character_skills, :value, :integer
  end
end

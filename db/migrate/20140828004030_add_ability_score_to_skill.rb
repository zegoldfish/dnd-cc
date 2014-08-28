class AddAbilityScoreToSkill < ActiveRecord::Migration
  def change
    add_column :skills, :ability_score_id, :integer
  end
end

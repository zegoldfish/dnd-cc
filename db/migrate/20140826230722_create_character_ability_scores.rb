class CreateCharacterAbilityScores < ActiveRecord::Migration
  def change
    create_table :character_ability_scores do |t|
    	t.integer :character_id
    	t.integer :ability_score_type_id
    	t.integer :value
	    t.timestamps
    end
  end
end

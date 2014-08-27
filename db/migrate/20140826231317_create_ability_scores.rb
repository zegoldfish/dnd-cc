class CreateAbilityScores < ActiveRecord::Migration
  def change
    create_table :ability_scores do |t|
    	t.string :ability_score_name
    	t.text :description
	    t.timestamps
    end
  end
end

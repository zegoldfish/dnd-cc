class AddCampaignsToCharacters < ActiveRecord::Migration
	def up
		add_column :characters, :campaign_id, :integer
	end

	def down
		remove_column :characters, :campaign_id
	end
end

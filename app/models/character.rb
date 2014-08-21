class Character < ActiveRecord::Base
	belongs_to :player
	belongs_to :race
	belongs_to :character_class
	belongs_to :alignment
end

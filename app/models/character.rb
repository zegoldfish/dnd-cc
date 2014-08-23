class Character < ActiveRecord::Base
	belongs_to :player
	belongs_to :race
	belongs_to :alignment
	has_many :character_classes
	has_many :character_attributes
end

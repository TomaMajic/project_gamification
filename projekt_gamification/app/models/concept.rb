class Concept < ApplicationRecord

	has_many :levels
	has_many :user_concepts
	
end
class Level < ApplicationRecord

	has_many :user_levels
	has_many :questions
	belongs_to :concept

	def self.get_status(q1_s, q2_s, q3_s, q4_s)

		status = 0
		if q1_s 
			status += 1
		end	
		if q2_s 
			status += 1
		end	
		if q3_s 
			status += 1
		end	
		if q4_s 
			status += 1
		end	

		status -= 1

	end	

end

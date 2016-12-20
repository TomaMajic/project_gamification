class Level < ApplicationRecord

	has_many :user_levels
	has_one :question_one, :class_name => 'Question', :foreign_key => 'question_one_id'
	has_one :question_two, :class_name => 'Question', :foreign_key => 'question_two_id'
	has_one :question_three, :class_name => 'Question', :foreign_key => 'question_three_id'
	has_one :question_four, :class_name => 'Question', :foreign_key => 'question_four_id'
end

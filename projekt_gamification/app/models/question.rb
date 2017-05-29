class Question < ApplicationRecord

	belongs_to :level
	has_many :answers
	has_many :user_questions

	def self.get_new_unanswered_question(level_id, current_user)
		new_question = Question.where(:level_id => level_id).order("RAND()")
		user_answered_array = []
		user_answered = UserQuestion.where(:user_id => current_user.id)

		user_answered.each do |ua|
			user_answered_array << ua.question_id
		end

		new_question.each do |question|
			if !user_answered_array.include? question.id
				return question
			end
		end

		return nil
	end

end

class AddQuestionToUserQuestions < ActiveRecord::Migration[5.0]
  def change
  	add_reference :user_questions, :question
  end
end

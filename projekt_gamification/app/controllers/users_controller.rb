class UsersController < ApplicationController
	layout 'game'
	before_action :authenticate_user!

	def index 
		@user = current_user
	end

	def review
		@user_concepts = UserConcept.where(user_id: current_user.id) 
	end

	def get_category_questions
		user_questions = UserQuestion.where(user_id: current_user.id)
		questions = []
		user_questions.each do |user_question|
			questions << user_question.question
		end
		@review_questions = []
		@review_answers = []

		questions.each do |q|
			answers = Answer.where(question_id: q.id)
			answers.each do |answer|
				@review_answers << answer if answer.correct
			end
			@review_questions << q.question_text if q.level.concept_id == params[:id].to_i
		end

		respond_to do |format|
    		@html_content = render_to_string :partial => 'users/review_questions_list'
      		format.json { render :json => { :html_content => @html_content } }
	    end	
	end

	def sign_out 
		redirect_to(new_user_session_path)
	end
end


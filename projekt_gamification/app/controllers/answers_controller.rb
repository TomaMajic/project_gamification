class AnswersController < ApplicationController

	def create
		@answer = Answer.new(answer_params)
		@answer.save
		redirect_to url_for(:controller => :admins, :action => :index)
	end

	private

	def answer_params
    	params.require(:answer).permit(:question_id, :ans, :explanation, :correct)
  	end
end

class QuestionsController < ApplicationController

  def index
  	@questions = Question.where(:level_id => params[:id])
  end
end

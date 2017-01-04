class QuestionsController < ApplicationController


  layout 'game'
  
  def index
  	@questions = Question.where(:level_id => params[:id])
  end
end

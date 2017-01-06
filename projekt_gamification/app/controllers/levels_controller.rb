class LevelsController < ApplicationController

  layout 'game'

  def index
  	@levels = Level.where(:concept_id => params[:concept_id])

  end
end

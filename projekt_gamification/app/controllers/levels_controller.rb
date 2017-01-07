class LevelsController < ApplicationController

  layout 'game'

  def index
  	@levels = Level.where(:concept_id => params[:concept_id])

  end

  def check_playable

  	level = Level.find(params[:id])
  	user_level = UserLevel.find_by(:user_id => current_user.id, :level_id => level.id)

  	playable = true;

  	if user_level.blank? && level.level_no != 1
  		playable = false;
  	end	

  	render :json => {:playable => playable}

  end	
end

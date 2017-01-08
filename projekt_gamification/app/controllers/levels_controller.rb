class LevelsController < ApplicationController

  layout 'game'

  def index
  	@levels = Level.where(:concept_id => params[:concept_id])

  end

  def check_playable

  	level = Level.find(params[:id])
  	user_level = UserLevel.find_by(:user_id => current_user.id, :level_id => level.id)
    last_level = UserLevel.order('created_at DESC').last
    last_level_status = 0

    if !last_level.blank?
      last_level_status = Level.get_status(last_level.q1_status, last_level.q2_status, last_level.q3_status, last_level.q4_status)
    end  

  	playable = true;

    if level.level_no == 1
      playable = true  
    elsif !last_level.blank? && last_level_status >= 1 
      playable = true
    else
      playable = false   
    end    
  		
  	render :json => {:playable => playable}

  end	
end

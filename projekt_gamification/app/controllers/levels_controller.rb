class LevelsController < ApplicationController

  layout 'game'

  def index
  	@levels = Level.where(:concept_id => params[:concept_id])

  end

  def check_playable

  	level = Level.find(params[:id])
  	user_level = UserLevel.find_by(:user_id => current_user.id, :level_id => level.id)
    last_level = UserLevel.order('created_at').last
    last_level_status = 0
    already_played = false
    completed = false

    if !user_level.blank?
      already_played = true
      if user_level.q1_status == true && user_level.q2_status == true && user_level.q3_status == true && user_level.q4_status == true
        completed = true
      end
    end  

    if !last_level.blank?
      last_level_status = Level.get_status(last_level.q1_status, last_level.q2_status, last_level.q3_status, last_level.q4_status)
    end  

  	playable = true;

    if level.level_no == 1 || !user_level.blank?
      playable = true  
    elsif !last_level.blank? && last_level_status >= 1 && (level.id - last_level.level_id <= 1) 
      playable = true
    else
      playable = false   
    end    
  		
  	render :json => {:playable => playable, :already_played => already_played, :completed => completed}

  end	
end

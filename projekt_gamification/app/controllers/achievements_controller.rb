class AchievementsController < ApplicationController

  layout 'game'	

  def index
  	@achievements = Achievement.all
  	@user_achievements = UserAchievement.all
  end

end

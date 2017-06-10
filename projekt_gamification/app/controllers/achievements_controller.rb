class AchievementsController < ApplicationController

  layout 'game'	

  def index
  	@achievements = Achievement.all
  	@user_achievements = UserAchievement.all
  end

  def get_categorized_achievements
  	@yellow = false
  	@green = false
  	@blue = false
  	@red = false
  	id = params[:id]
  	achievements = Achievement.all
  	@listing_achievements = []

  	case id
  	when /star-collection/
  		achievements.each do |achievement|
  			@listing_achievements << achievement if achievement.name.match(/zvjezd/)
  		end
  		@yellow = true
  	when /cat-trav/
  		achievements.each do |achievement|
			@listing_achievements << achievement if achievement.name.match(/razina|kategorija/i)
  		end
  		@red = true
  	when /quest/
		achievements.each do |achievement|
			@listing_achievements << achievement if achievement.name.match(/pitanje/)
		end
		@blue = true
  	when /misc/
		achievements.each do |achievement|
			@listing_achievements << achievement if achievement.name.match(/za redom|prijavio/)
		end
		@green = true
  	end

	respond_to do |format|
		@html_content = render_to_string :partial => 'achievements/achievement_category'
  		format.json { render :json => { :html_content => @html_content } }
    end	

  end

end

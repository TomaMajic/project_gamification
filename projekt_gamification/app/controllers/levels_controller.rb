class LevelsController < ApplicationController

  def begginer
  	#@level = Level.find("1")
  	#l_id = @level.id
  	@question = Question.find("1")
  end

  def intermediate 
  end

  def expert
  end
end

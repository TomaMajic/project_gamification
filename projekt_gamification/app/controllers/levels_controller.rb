class LevelsController < ApplicationController

  layout 'game'

  def index
  	@levels = Level.all
  end
end

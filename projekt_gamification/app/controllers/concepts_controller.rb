class ConceptsController < ApplicationController

  layout 'game'
  
  def index
  	@concepts = Concept.all
  end

  def check_unlocked 

  	unlocked = true

  	if params[:id].to_i > 1
	  	prev_concept = Concept.find(params[:id].to_i-1)	 
	  
	  	unlocked = false

	  	if prev_concept.progress >= 3
	  		unlocked = true
	  	end 	
  	end

	render :json => { :unlocked => unlocked }

  end

end

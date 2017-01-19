class ConceptsController < ApplicationController

  layout 'game'
  
  def index
  	@concepts = Concept.all
  end

  def check_unlocked 

  	unlocked = true

    user_concept = UserConcept.find_by(:user_id => current_user.id, :concept_id => params[:id])
    prev_user_concept = UserConcept.find_by(:user_id => current_user.id, :concept_id => (params[:id].to_i - 1))

    if user_concept.blank? && params[:id].to_i != 1
      if !prev_user_concept.blank?
        if prev_user_concept.progress < 25
          unlocked = false
        end
      else
        unlocked = false
      end
    else 
      unlocked ==true      
    end  

	  render :json => { :unlocked => unlocked }

  end

  def check_progress

    @concepts = Concept.all
    progress = []

    @concepts.each do |conc|
      user_concept = UserConcept.find_by(:user_id => current_user.id, :concept_id => conc.id)
      if !user_concept.blank?
        progress << user_concept.progress
      else 
        progress << 0  
      end  
    end  

    render :json => { :progress => progress }

  end  

end

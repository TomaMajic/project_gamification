class ConceptsController < ApplicationController

  layout 'game'
  
  def index
  	@concepts = Concept.where(:parent_id => nil)
  end

  def check_unlocked 

  	unlocked = true

    user_concept = UserConcept.find_by(:user_id => current_user.id, :concept_id => params[:id])
    prev_user_concept = UserConcept.find_by(:user_id => current_user.id, :concept_id => (params[:id].to_i - 1))

    if user_concept.blank? && params[:id].to_i != 7
      if !prev_user_concept.blank?
        if prev_user_concept.progress < 25
          unlocked = false
        end
      else
        unlocked = false
      end
    else 
      unlocked = true      
    end  

	  render :json => { :unlocked => unlocked }
  end

  def check_progress

    @concepts = Concept.where.not(:parent_id => nil)
    puts @concepts
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

  def get_subcategories

    success = false
    @subcategories = Concept.where(:parent_id => params[:id])
    success = true if @subcategories.size >= 1
    @sub_names = []

    @subcategories.each do |sub|
      @sub_names << sub.name
    end

    respond_to do |format|
      @html_content = render_to_string :partial => 'concepts/subcategories_list'
      format.json { render :json => { :html_content => @html_content } }
    end
  end
end

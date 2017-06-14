class ConceptsController < ApplicationController

  layout 'game'
  
  def index
  	@concepts = Concept.where(:parent_id => nil)
  end

  def create
    @concept = Concept.new(concept_params)
    @concept.save
    redirect_to url_for(:controller => :admins, :action => :index)
  end

  def check_unlocked 

  	unlocked = true

    user_concept = UserConcept.find_by(:user_id => current_user.id, :concept_id => params[:id])
    prev_user_concept = UserConcept.find_by(:user_id => current_user.id, :concept_id => (params[:id].to_i - 1))

    if user_concept.blank? && params[:id].to_i != 7
      if !prev_user_concept.blank?
        if prev_user_concept.progress < 5
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

    @concepts = Concept.where(:parent_id => nil)
    progress = []
    children_count = []

    @concepts.each do |conc|
      children_progress = 0
      children = Concept.where(:parent_id => conc.id).all

      children.each do |child|
        user_concept = UserConcept.find_by(:user_id => current_user.id, :concept_id => child.id)
        if !user_concept.blank?
          children_progress += user_concept.progress
        end
      end

      children_count << children.count
      progress << children_progress  
    end  

    render :json => { :progress => progress, :children_count => children_count }
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

  private

  def concept_params
    params.require(:concept).permit(:name, :parent_id)
  end
end

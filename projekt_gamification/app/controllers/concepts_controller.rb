class ConceptsController < ApplicationController

  layout 'game'
  
  def index
  	@concepts = Concept.all
  end

end

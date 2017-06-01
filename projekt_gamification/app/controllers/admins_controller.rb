class AdminsController < ApplicationController

	def index
		@concept = Concept.new
		@level = Level.new		
		@question = Question.new
		@answer = Answer.new
	end

end

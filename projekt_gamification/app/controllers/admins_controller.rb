class AdminsController < ApplicationController

	def get_form_for_creation
		form_id = params[:id]
		partial_string = nil

		case form_id
		when /cat/
			partial_string = 'admins/' + 'category_form'
			@concept = Concept.new
		when /lev/
			partial_string = 'admins/' + 'level_form'
			@level = Level.new	
		when /ques/
			partial_string = 'admins/' + 'question_form'
			@question = Question.new
		when /answ/
			partial_string = 'admins/' + 'answer_form'
			@answer = Answer.new
		end

		puts partial_string

		if !partial_string.blank?
			respond_to do |format|
	    		@html_content = render_to_string :partial => partial_string
	      		format.json { render :json => { :html_content => @html_content } }
		    end	
		end
	end

end

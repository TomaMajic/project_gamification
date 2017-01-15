class QuestionsController < ApplicationController


  layout 'game'
  
  def index
  	# @questions = Question.where(:level_id => params[:id])
  	@q = Question.get_new_unanswered_question(params[:id], current_user)
  end

  def check_correct
  	answer = Answer.find(params[:id])
  	question = answer.question
  	level = question.level
    concept = level.concept

  	correct = answer.correct
  	success = true
  	status = 0


  	#zabiljezi useru tocno ili krivo i da ga je rjesia
  	user_level = UserLevel.find_by(:user_id => current_user.id, :level_id => level.id)
  	if user_level.blank?
  		user_level = UserLevel.create(:user_id => current_user.id, :level_id => level.id)
  	end

    #ODI MORAS RIJESIT SLUCAJ DA JE VEC ODIGRAN I ODRADIT TO SA ZVIZDAMA

    if (user_level.q1_status == true || user_level.q1_status == false) && (user_level.q2_status == true || user_level.q2_status == false) && (user_level.q3_status == true || user_level.q3_status == false) && (user_level.q4_status == true || user_level.q4_status == false)

      if params[:q_num].to_i == 1
        if correct
          user_level.q1_status = correct
        end 
      elsif params[:q_num].to_i == 2
        if correct
          user_level.q2_status = correct
        end 
      elsif params[:q_num].to_i == 3
        if correct
          user_level.q3_status = correct
        end 
      elsif params[:q_num].to_i == 4
        if correct
          user_level.q4_status = correct
        end 
        success = false
        user_level.q1_status == true ? status += 1 : nil
        user_level.q2_status == true ? status += 1 : nil
        user_level.q3_status == true ? status += 1 : nil
        user_level.q4_status == true ? status += 1 : nil

      end      
          
    else

      if user_level.q1_status != true && user_level.q1_status != false
        user_level.q1_status = correct
      elsif user_level.q2_status != true && user_level.q2_status != false
        user_level.q2_status = correct  
      elsif user_level.q3_status != true && user_level.q3_status != false
        user_level.q3_status = correct
      elsif user_level.q4_status != true && user_level.q4_status != false
        user_level.q4_status = correct

        success = false
        user_level.q1_status == true ? status += 1 : nil
        user_level.q2_status == true ? status += 1 : nil
        user_level.q3_status == true ? status += 1 : nil
        user_level.q4_status == true ? status += 1 : nil
      end

    end  

  	user_level.save
  	UserQuestion.create(:user_id => current_user.id, :question_id => question.id)

  	render :json => { :correct => correct, :success => success, :status => status }
  end

  def get_new_question
  	@q = Question.get_new_unanswered_question(params[:level_id], current_user)# .where(:level_id => params[:level_id]).order("RAND()").first
  	respond_to do |format|
  	  @html_content = render_to_string :partial => 'questions/new_question'
  	  format.json { render :json => { :html_content => @html_content } }
  	end

  end


end

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
    replayed_status = 0
    new_id = 0

    #ako je prvi level zabiljezi mu kategoriju ako nije dohvati i rijesi progress
    user_concept = UserConcept.find_by(:user_id => current_user.id, :concept_id => concept.id)
    if user_concept.blank?
      user_concept = UserConcept.create(:user_id => current_user.id, :concept_id => concept.id)
    end

  	#zabiljezi useru tocno ili krivo i da ga je rjesia
  	user_level = UserLevel.find_by(:user_id => current_user.id, :level_id => level.id)
  	if user_level.blank?
  		user_level = UserLevel.create(:user_id => current_user.id, :level_id => level.id)
  	end


    if (user_level.q1_status == true || user_level.q1_status == false) && (user_level.q2_status == true || user_level.q2_status == false) && (user_level.q3_status == true || user_level.q3_status == false) && (user_level.q4_status == true || user_level.q4_status == false)

      if params[:q_num].to_i == 1
        replayed_level = UserLevel.create(:user_id => current_user.id, :level_id => level.id)
        new_id = replayed_level.id
        replayed_level.q1_status = correct 
        replayed_level.save
      elsif params[:q_num].to_i == 2
        replayed_level = UserLevel.find(params[:u_l_id])
        new_id = replayed_level.id
        replayed_level.q2_status = correct
        replayed_level.save 
      elsif params[:q_num].to_i == 3
        replayed_level = UserLevel.find(params[:u_l_id])
        new_id = replayed_level.id
        replayed_level.q3_status = correct
        replayed_level.save
      elsif params[:q_num].to_i == 4
        replayed_level = UserLevel.find(params[:u_l_id])
        new_id = replayed_level.id
        replayed_level.q4_status = correct
        replayed_level.save

        user_level.q1_status == true ? status += 1 : nil
        user_level.q2_status == true ? status += 1 : nil
        user_level.q3_status == true ? status += 1 : nil
        user_level.q4_status == true ? status += 1 : nil

        replayed_level.q1_status == true ? replayed_status += 1 : nil
        replayed_level.q2_status == true ? replayed_status += 1 : nil
        replayed_level.q3_status == true ? replayed_status += 1 : nil
        replayed_level.q4_status == true ? replayed_status += 1 : nil

        if replayed_status >= status
          user_level.q1_status = replayed_level.q1_status
          user_level.q2_status = replayed_level.q2_status
          user_level.q3_status = replayed_level.q3_status
          user_level.q4_status = replayed_level.q4_status

          user_concept.progress -= (status-1)
          user_concept.progress += (replayed_status-1)

          status = replayed_status
        end  
        success = false

        replayed_level.destroy

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

        user_concept.progress += (status-1)
      end

    end  

  	user_level.save
    user_concept.save
  	UserQuestion.create(:user_id => current_user.id, :question_id => question.id)

  	render :json => { :correct => correct, :success => success, :status => status, :new_id => new_id }
  end

  def get_new_question
  	@q = Question.get_new_unanswered_question(params[:level_id], current_user)# .where(:level_id => params[:level_id]).order("RAND()").first
  	respond_to do |format|
  	  @html_content = render_to_string :partial => 'questions/new_question'
  	  format.json { render :json => { :html_content => @html_content } }
  	end

  end


end

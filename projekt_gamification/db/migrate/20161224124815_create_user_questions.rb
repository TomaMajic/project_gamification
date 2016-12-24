class CreateUserQuestions < ActiveRecord::Migration[5.0]
  def up
    create_table :user_questions do |t|

    	t.references :user
     	t.timestamps

    end
  end

  def down
  	drop_table :user_questions
  end	
end

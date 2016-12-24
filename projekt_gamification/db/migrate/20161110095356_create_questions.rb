class CreateQuestions < ActiveRecord::Migration[5.0]
  def up
    create_table :questions do |t|

    	t.integer "level_id"
        t.string "question_text", :null => false

        t.timestamps
    end
  end

  def down
    drop_table :questions
  end  
end
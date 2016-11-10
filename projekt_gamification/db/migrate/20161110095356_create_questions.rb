class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|

    	t.string "question_text", :null => false
    	t.string "type"
    	t.string "correct_answer_fill"
    	t.integer "correct_answer_multi"

        t.timestamps
    end
  end
end

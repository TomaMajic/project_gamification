class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|

    	t.integer "level_id"
    	t.string "question_text", :null => false
    	t.string "type"
        t.string "a1"
        t.string "a2"
        t.string "a3"
        t.string "a4"
        t.string "fill_ans"
    	t.string "correct_answer_fill"
    	t.integer "correct_answer_multi"

        t.timestamps
    end
  end
end

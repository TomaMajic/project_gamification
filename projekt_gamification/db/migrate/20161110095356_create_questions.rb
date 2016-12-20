class CreateQuestions < ActiveRecord::Migration[5.0]
  def up
    create_table :questions do |t|

        t.integer "answer_id"
        t.string "question_text", :null => false
        t.string "a1"
        t.string "a2"
        t.string "a3"
        t.string "a4"

        t.timestamps
    end
  end

  def down
    drop_table :questions
  end  
end
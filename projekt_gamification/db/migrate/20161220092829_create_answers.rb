class CreateAnswers < ActiveRecord::Migration[5.0]
  def up
    create_table :answers do |t|

      t.integer "question_id"
      t.string "ans"
      t.string "explanation"
      t.boolean "correct"

      t.timestamps
    end
  end

  def down 
  	drop_table :answers
  end
end
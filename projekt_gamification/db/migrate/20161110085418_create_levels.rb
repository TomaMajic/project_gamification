class CreateLevels < ActiveRecord::Migration[5.0]
  def change
    create_table :levels do |t|

    	t.string "difficulty", :null => false
    	t.string "first_question"
    	t.string "second_question"
    	t.string "third_question"
    	t.string "fourth_question"
    	t.integer "level_no"

        t.timestamps
    end
  end
end

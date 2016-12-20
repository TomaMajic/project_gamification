class CreateLevels < ActiveRecord::Migration[5.0]
  def up
    create_table :levels do |t|

        t.references :question_one
        t.references :question_two
        t.references :question_three
        t.references :question_four
        t.integer "level_no"

        t.timestamps
    end
  end

  def down
    drop_table :levels
  end 
end
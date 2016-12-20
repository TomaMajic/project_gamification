class CreateLevels < ActiveRecord::Migration[5.0]
  def up
    create_table :levels do |t|

        t.integer "q1_id", :null => false
        t.integer "q2_id", :null => false
        t.integer "q3_id", :null => false
        t.integer "q4_id", :null => false
        t.integer "level_no"

        t.timestamps
    end
  end

  def down
    drop_table :levels
  end 
end
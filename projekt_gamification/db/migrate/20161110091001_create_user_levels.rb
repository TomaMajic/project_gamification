class CreateUserLevels < ActiveRecord::Migration[5.0]
  def change
    create_table :user_levels do |t|

    	t.references :user
    	t.references :level
    	t.boolean "q1_status"
    	t.boolean "q2_status"
    	t.boolean "q3_status"
    	t.boolean "q4_status"
    	
        t.timestamps
    end
  end
end

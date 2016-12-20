class CreateAchievements < ActiveRecord::Migration[5.0]
  def up
    create_table :achievements do |t|

        t.boolean "complete", :default => false
        t.string "name", :null => false

        t.timestamps
    end
  end

  def down
    drop_table :achievements
  end  
end

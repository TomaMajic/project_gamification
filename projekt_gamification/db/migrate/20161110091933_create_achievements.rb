class CreateAchievements < ActiveRecord::Migration[5.0]
  def change
    create_table :achievements do |t|

    	t.boolean "first_star", :default => false
    	t.boolean "ten_stars", :default => false
    	t.boolean "complete_begginer", :default => false
    	t.boolean "complete_intermediate", :default => false
    	t.boolean "complete_expert", :default => false
    	t.boolean "collect_all_stars", :default => false

        t.timestamps
    end
  end
end

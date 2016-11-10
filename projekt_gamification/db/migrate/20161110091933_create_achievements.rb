class CreateAchievements < ActiveRecord::Migration[5.0]
  def change
    create_table :achievements do |t|

    	t.boolean "first_star"
    	t.boolean "ten_stars"
    	t.boolean "complete_begginer"
    	t.boolean "complete_intermediate"
    	t.boolean "complete_expert"
    	t.boolean "collect_all_stars"

        t.timestamps
    end
  end
end

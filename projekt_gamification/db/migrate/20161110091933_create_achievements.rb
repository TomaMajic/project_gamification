class CreateAchievements < ActiveRecord::Migration[5.0]
  def change
    create_table :achievements do |t|

    	t.string "first_star"
    	t.string "ten_stars"
    	t.string "complete_begginer"
    	t.string "complete_intermediate"
    	t.string "complete_expert"
    	t.string "collect_all_stars"

        t.timestamps
    end
  end
end

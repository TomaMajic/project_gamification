class CreateAchievements < ActiveRecord::Migration[5.0]
  def change
    create_table :achievements do |t|

    	t.boolean "first_star" false
    	t.boolean "ten_stars" false
    	t.boolean "complete_begginer" false
    	t.boolean "complete_intermediate" false
    	t.boolean "complete_expert" false
    	t.boolean "collect_all_stars" false

        t.timestamps
    end
  end
end

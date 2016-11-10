class CreateLeaderboards < ActiveRecord::Migration[5.0]
  def change
    create_table :leaderboards do |t|

    	t.integer "user_id"
    	t.integer "user_score"

        t.timestamps
    end
  end
end

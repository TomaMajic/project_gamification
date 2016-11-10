class CreateUserAchievements < ActiveRecord::Migration[5.0]
  def change
    create_table :user_achievements do |t|

    	t.references :user
    	t.references :achievement

        t.timestamps
    end
  end
end

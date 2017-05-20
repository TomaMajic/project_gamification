class RemoveCompleteFromAchievements < ActiveRecord::Migration[5.0]
  def change
  	remove_column :achievements, :complete, :boolean
  end
end

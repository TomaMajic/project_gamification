class CreateUserConcepts < ActiveRecord::Migration[5.0]
  def up
    create_table :user_concepts do |t|

      t.references :user
      t.references :concept
      t.integer "progress", :default => 0

      t.timestamps
    end
  end

  def down
  	drop_table :user_concepts
  end	
end

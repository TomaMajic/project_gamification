class CreateConcepts < ActiveRecord::Migration[5.0]
  def up
    create_table :concepts do |t|

      t.string "name"
      t.integer "progress", :default => 0
      
      t.timestamps
    end
  end

  def down 
  	drop_table :concepts
  end
end

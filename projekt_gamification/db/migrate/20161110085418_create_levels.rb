class CreateLevels < ActiveRecord::Migration[5.0]
  def up
    create_table :levels do |t|

        t.integer "concept_id"
        t.integer "level_no"

        t.timestamps
    end
  end

  def down
    drop_table :levels
  end 
end
class AddParentIdToConcepts < ActiveRecord::Migration[5.0]
  def change
    add_column :concepts, :parent_id, :integer
  end
end

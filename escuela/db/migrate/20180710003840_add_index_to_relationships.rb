class AddIndexToRelationships < ActiveRecord::Migration[5.1]
  def change
  add_column :relationships, :nota,:float   
  end
end

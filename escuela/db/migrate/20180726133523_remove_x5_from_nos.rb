class RemoveX5FromNos < ActiveRecord::Migration[5.1]
  def change
    remove_column :nos, :X5, :string
  end
end

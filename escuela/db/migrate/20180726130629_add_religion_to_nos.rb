class AddReligionToNos < ActiveRecord::Migration[5.1]
  def change
    add_column :nos, :X1, :string
    add_column :nos, :X2, :string
    add_column :nos, :X3, :string
    add_column :nos, :X4, :string
    add_column :nos, :X5, :string
    add_column :nos, :XX, :string                
  end
end

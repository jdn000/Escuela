class AddRunToAlumnos < ActiveRecord::Migration[5.1]
  def change
    add_column :alumnos, :RUN, :string
  end
end

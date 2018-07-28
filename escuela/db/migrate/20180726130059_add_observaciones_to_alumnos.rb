class AddObservacionesToAlumnos < ActiveRecord::Migration[5.1]
  def change
    add_column :alumnos, :observacion, :string
  end
end

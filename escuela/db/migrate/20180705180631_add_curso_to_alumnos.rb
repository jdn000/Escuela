class AddCursoToAlumnos < ActiveRecord::Migration[5.1]
  def change
  	add_column :alumnos,:curso,:string
  end
end

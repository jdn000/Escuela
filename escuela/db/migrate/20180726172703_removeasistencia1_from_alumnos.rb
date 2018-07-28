class Removeasistencia1FromAlumnos < ActiveRecord::Migration[5.1]
  def change
    remove_column :alumnos, :asistencia1, :integer
  end
end

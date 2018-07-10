class RutUnico < ActiveRecord::Migration[5.1]
  def change
  	add_index :Alumnos, :rut , unique: true
  end
end

class CreateAsignaturas < ActiveRecord::Migration[5.1]
  def change
    create_table :asignaturas do |t|
      t.string :nombre_asignatura, null:false, unique:true
      t.string :periodo
      t.timestamps
    end
  end
end

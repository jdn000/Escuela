class CreateAlumnos < ActiveRecord::Migration[5.1]
  def change
    create_table :alumnos do |t|
      t.string :rut, null:false
      t.string :nombre, null:false
      t.string :ap_pat, null:false
      t.string :ap_mat, null:false

      t.timestamps
    end
  end
end

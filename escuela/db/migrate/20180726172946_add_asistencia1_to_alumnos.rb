class AddAsistencia1ToAlumnos < ActiveRecord::Migration[5.1]
  def change
    add_column :alumnos, :asistencia1, :float
  end
end

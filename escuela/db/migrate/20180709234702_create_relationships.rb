class CreateRelationships < ActiveRecord::Migration[5.1]
  def change
    create_table :relationships do |t|
      t.string :rut_al
      t.string :nom_asig

      t.timestamps
    end
  add_index :relationships, :rut_al
  add_index :relationships, :nom_asig  
  add_index :relationships, [:rut_al, :nom_asig], unique: true
  end
end

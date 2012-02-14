class CreateAsignaturas < ActiveRecord::Migration
  def change
    create_table :asignaturas do |t|
      t.string :codigo
      t.string :nombre
      t.string :tipo
      t.integer :numero_notas_parciales
      t.boolean :examen

      t.timestamps
    end
  end
end

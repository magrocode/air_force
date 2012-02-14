class CreateAnotacions < ActiveRecord::Migration
  def change
    create_table :anotacions do |t|
      t.date :fecha
      t.text :anotacion
      t.integer :meritos
      t.integer :demeritos
      t.string :calificador
      t.integer :alumno_id

      t.timestamps
    end
  end
end

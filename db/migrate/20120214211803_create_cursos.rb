class CreateCursos < ActiveRecord::Migration
  def change
    create_table :cursos do |t|
      t.string :codigo
      t.integer :anio
      t.string :semestre
      t.string :area
      t.string :especialidad

      t.timestamps
    end
  end
end

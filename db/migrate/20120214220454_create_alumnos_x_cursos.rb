class CreateAlumnosXCursos < ActiveRecord::Migration
  def change
    create_table :alumnos_x_cursos do |t|
      t.integer :curso_id
      t.integer :alumno_id

      t.timestamps
    end
  end
end

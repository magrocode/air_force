class CreateAsignaturaXCursos < ActiveRecord::Migration
  def change
    create_table :asignatura_x_cursos do |t|
      t.integer :curso_id
      t.integer :asignatura_id

      t.timestamps
    end
  end
end

class Alumno < ActiveRecord::Base
  has_many :alumnos_x_cursos
end

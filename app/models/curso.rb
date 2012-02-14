class Curso < ActiveRecord::Base
  has_many :asignatura_x_cursos
end

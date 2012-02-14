class AsignaturaXCurso < ActiveRecord::Base
  belongs_to :curso
  belongs_to :asignatura
end

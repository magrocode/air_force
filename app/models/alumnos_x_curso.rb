class AlumnosXCurso < ActiveRecord::Base
  belongs_to :curso
  belongs_to :alumno
end

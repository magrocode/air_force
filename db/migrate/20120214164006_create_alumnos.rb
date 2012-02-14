class CreateAlumnos < ActiveRecord::Migration
  def change
    create_table :alumnos do |t|
      t.string :rut
      t.integer :numero_empleado
      t.date :fecha_nacimiento
      t.string :grupo_sanguineo
      t.boolean :servicio_militar
      t.string :lugar_servicio_militar
      t.boolean :inscripcion_electoral
      t.string :circunscripcion
      t.date :fecha_ingreso
      t.date :fecha_egreso
      t.string :direccion_particular
      t.integer :telefono_fijo
      t.integer :telefono_celular
      t.string :email
      t.boolean :psu
      t.integer :puntaje_psu
      t.string :establecimiento_ensenanza_media
      t.integer :anios_ensenanza_media
      t.string :establecimiento_superior
      t.integer :anios_superior
      t.string :titulo

      t.timestamps
    end
  end
end

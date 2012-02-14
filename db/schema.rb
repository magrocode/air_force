# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120214211803) do

  create_table "alumnos", :force => true do |t|
    t.string   "rut"
    t.integer  "numero_empleado"
    t.date     "fecha_nacimiento"
    t.string   "grupo_sanguineo"
    t.boolean  "servicio_militar"
    t.string   "lugar_servicio_militar"
    t.boolean  "inscripcion_electoral"
    t.string   "circunscripcion"
    t.date     "fecha_ingreso"
    t.date     "fecha_egreso"
    t.string   "direccion_particular"
    t.integer  "telefono_fijo"
    t.integer  "telefono_celular"
    t.string   "email"
    t.boolean  "psu"
    t.integer  "puntaje_psu"
    t.string   "establecimiento_ensenanza_media"
    t.integer  "anios_ensenanza_media"
    t.string   "establecimiento_superior"
    t.integer  "anios_superior"
    t.string   "titulo"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
    t.string   "nombres"
    t.string   "apellido_paterno"
    t.string   "apellido_materno"
  end

  create_table "asignaturas", :force => true do |t|
    t.string   "codigo"
    t.string   "nombre"
    t.string   "tipo"
    t.integer  "numero_notas_parciales"
    t.boolean  "examen"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  create_table "cursos", :force => true do |t|
    t.string   "codigo"
    t.integer  "anio"
    t.string   "semestre"
    t.string   "area"
    t.string   "especialidad"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "profesors", :force => true do |t|
    t.string   "rut"
    t.string   "nombres"
    t.string   "apellido_paterno"
    t.string   "apellido_materno"
    t.string   "email"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

end

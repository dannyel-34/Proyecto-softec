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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150617030118) do

  create_table "alumnos", force: true do |t|
    t.integer  "ficha"
    t.string   "nombre"
    t.string   "primer_apellido"
    t.string   "segundo_apellido"
    t.string   "nombre_completo"
    t.string   "tel"
    t.string   "direccion"
    t.integer  "municipio_id"
    t.string   "celular"
    t.string   "doc"
    t.integer  "tipo_doc_id"
    t.date     "fch_nacimiento"
    t.integer  "estado_civil_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "genero"
    t.string   "email"
    t.string   "image"
  end

  add_index "alumnos", ["estado_civil_id"], name: "index_alumnos_on_estado_civil_id"
  add_index "alumnos", ["municipio_id"], name: "index_alumnos_on_municipio_id"
  add_index "alumnos", ["tipo_doc_id"], name: "index_alumnos_on_tipo_doc_id"

  create_table "assignments", force: true do |t|
    t.integer  "user_id"
    t.integer  "role_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "assignments", ["role_id"], name: "index_assignments_on_role_id"
  add_index "assignments", ["user_id"], name: "index_assignments_on_user_id"

  create_table "assistances", force: true do |t|
    t.integer  "alumno_id"
    t.integer  "profesor_id"
    t.integer  "curso_id"
    t.integer  "grupo_id"
    t.integer  "horario_id"
    t.date     "fch"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "assistances", ["alumno_id"], name: "index_assistances_on_alumno_id"
  add_index "assistances", ["curso_id"], name: "index_assistances_on_curso_id"
  add_index "assistances", ["grupo_id"], name: "index_assistances_on_grupo_id"
  add_index "assistances", ["horario_id"], name: "index_assistances_on_horario_id"
  add_index "assistances", ["profesor_id"], name: "index_assistances_on_profesor_id"

  create_table "comentarios", force: true do |t|
    t.string   "nombre"
    t.string   "mail"
    t.string   "asunto"
    t.text     "mensaje"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "consulta", force: true do |t|
    t.integer  "alumno_id"
    t.integer  "curso_id"
    t.integer  "grupo_id"
    t.integer  "horario_id"
    t.integer  "institucion_id"
    t.integer  "sucursal_id"
    t.integer  "profesor_id"
    t.integer  "assistance_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "consulta", ["alumno_id"], name: "index_consulta_on_alumno_id"
  add_index "consulta", ["assistance_id"], name: "index_consulta_on_assistance_id"
  add_index "consulta", ["curso_id"], name: "index_consulta_on_curso_id"
  add_index "consulta", ["grupo_id"], name: "index_consulta_on_grupo_id"
  add_index "consulta", ["horario_id"], name: "index_consulta_on_horario_id"
  add_index "consulta", ["institucion_id"], name: "index_consulta_on_institucion_id"
  add_index "consulta", ["profesor_id"], name: "index_consulta_on_profesor_id"
  add_index "consulta", ["sucursal_id"], name: "index_consulta_on_sucursal_id"

  create_table "consultations", force: true do |t|
    t.integer  "alumno_id"
    t.integer  "curso_id"
    t.integer  "grupo_id"
    t.integer  "horario_id"
    t.integer  "institucion_id"
    t.integer  "sucursal_id"
    t.integer  "profesor_id"
    t.integer  "assistance_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "consultations", ["alumno_id"], name: "index_consultations_on_alumno_id"
  add_index "consultations", ["assistance_id"], name: "index_consultations_on_assistance_id"
  add_index "consultations", ["curso_id"], name: "index_consultations_on_curso_id"
  add_index "consultations", ["grupo_id"], name: "index_consultations_on_grupo_id"
  add_index "consultations", ["horario_id"], name: "index_consultations_on_horario_id"
  add_index "consultations", ["institucion_id"], name: "index_consultations_on_institucion_id"
  add_index "consultations", ["profesor_id"], name: "index_consultations_on_profesor_id"
  add_index "consultations", ["sucursal_id"], name: "index_consultations_on_sucursal_id"
  add_index "consultations", ["user_id"], name: "index_consultations_on_user_id"

  create_table "cursos", force: true do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.date     "fch_ini"
    t.date     "fch_fin"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "estado_civils", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "grupos", force: true do |t|
    t.string   "nombre"
    t.string   "cod"
    t.date     "fch_ini"
    t.date     "fch_fin"
    t.string   "lugar"
    t.string   "notas"
    t.integer  "maximo_alumnos"
    t.integer  "numero_alumnos"
    t.string   "horario"
    t.integer  "curso_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "grupos", ["curso_id"], name: "index_grupos_on_curso_id"

  create_table "horarios", force: true do |t|
    t.boolean  "asiste"
    t.datetime "fch"
    t.integer  "curso_id"
    t.integer  "profesor_id"
    t.integer  "alumno_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "horarios", ["alumno_id"], name: "index_horarios_on_alumno_id"
  add_index "horarios", ["curso_id"], name: "index_horarios_on_curso_id"
  add_index "horarios", ["profesor_id"], name: "index_horarios_on_profesor_id"

  create_table "institucions", force: true do |t|
    t.integer  "cod"
    t.string   "nombre"
    t.string   "email"
    t.string   "direccion"
    t.string   "telefono"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "municipios", force: true do |t|
    t.string "nombre_departamento"
    t.string "nombre_municipio"
    t.string "nombre_centro_poblado"
    t.string "nombre"
  end

  create_table "profesors", force: true do |t|
    t.string   "nombre"
    t.string   "primer_apellido"
    t.string   "segundo_apellido"
    t.string   "nombre_completo"
    t.string   "direccion"
    t.string   "telefono"
    t.integer  "doc_identidad"
    t.integer  "tipo_doc_id"
    t.integer  "estado_civils_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "fch_nacimiento"
  end

  add_index "profesors", ["estado_civils_id"], name: "index_profesors_on_estado_civils_id"
  add_index "profesors", ["tipo_doc_id"], name: "index_profesors_on_tipo_doc_id"

  create_table "roles", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sucursals", force: true do |t|
    t.string   "cod"
    t.string   "sede"
    t.string   "direccion"
    t.string   "email"
    t.integer  "institucion_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sucursals", ["institucion_id"], name: "index_sucursals_on_institucion_id"

  create_table "tipo_docs", force: true do |t|
    t.string   "nombre"
    t.string   "sigla"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end

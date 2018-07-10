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

ActiveRecord::Schema.define(version: 20180710011141) do

  create_table "alumnos", force: :cascade do |t|
    t.string "rut", null: false
    t.string "nombre", null: false
    t.string "ap_pat", null: false
    t.string "ap_mat", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "curso"
    t.index ["rut"], name: "index_Alumnos_on_rut", unique: true
  end

  create_table "asignaturas", force: :cascade do |t|
    t.string "nombre_asignatura", null: false
    t.string "periodo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "nombre_asignaturas_ruts", id: false, force: :cascade do |t|
    t.integer "rut_id", null: false
    t.integer "nombre_asignatura_id", null: false
    t.float "N"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "nota_totals", force: :cascade do |t|
    t.string "rut_alumno", null: false
    t.string "asignatura_actual"
    t.string "semestre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "relationships", force: :cascade do |t|
    t.string "rut_al"
    t.string "nom_asig"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "nota"
    t.index ["nom_asig"], name: "index_relationships_on_nom_asig"
    t.index ["rut_al"], name: "index_relationships_on_rut_al"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.string "remember_digest"
    t.boolean "admin", default: false
    t.string "activation_digest"
    t.boolean "activated", default: false
    t.datetime "activated_at"
    t.string "reset_digest"
    t.datetime "reset_sent_at"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end

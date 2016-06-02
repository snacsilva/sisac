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

ActiveRecord::Schema.define(version: 20160529231955) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "classes", force: :cascade do |t|
    t.string   "codigo"
    t.integer  "course_id"
    t.integer  "discipline_id"
    t.integer  "num_aluno"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "professor_id"
  end

  add_index "classes", ["course_id"], name: "index_classes_on_course_id", using: :btree
  add_index "classes", ["discipline_id"], name: "index_classes_on_discipline_id", using: :btree
  add_index "classes", ["professor_id"], name: "index_classes_on_professor_id", using: :btree

  create_table "coordinators", force: :cascade do |t|
    t.integer  "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "coordinators", ["course_id"], name: "index_coordinators_on_course_id", using: :btree

  create_table "courses", force: :cascade do |t|
    t.string   "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "student_id"
  end

  add_index "courses", ["student_id"], name: "index_courses_on_student_id", using: :btree

  create_table "disciplines", force: :cascade do |t|
    t.string   "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.integer  "function_id"
    t.integer  "sector_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "employees", ["function_id"], name: "index_employees_on_function_id", using: :btree
  add_index "employees", ["sector_id"], name: "index_employees_on_sector_id", using: :btree

  create_table "functions", force: :cascade do |t|
    t.string   "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "professors", force: :cascade do |t|
    t.integer  "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "professors", ["course_id"], name: "index_professors_on_course_id", using: :btree

  create_table "sectors", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "classe_id"
    t.integer  "user_id"
    t.integer  "course_id"
  end

  add_index "students", ["classe_id"], name: "index_students_on_classe_id", using: :btree
  add_index "students", ["course_id"], name: "index_students_on_course_id", using: :btree
  add_index "students", ["user_id"], name: "index_students_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.date     "data_nascimento"
    t.string   "num_identidade"
    t.string   "cpf"
    t.string   "cidade"
    t.string   "estado"
    t.string   "telefone"
    t.string   "celular"
    t.string   "email"
    t.string   "login"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_foreign_key "classes", "courses"
  add_foreign_key "classes", "disciplines"
  add_foreign_key "classes", "professors"
  add_foreign_key "coordinators", "courses"
  add_foreign_key "courses", "students"
  add_foreign_key "employees", "functions"
  add_foreign_key "employees", "sectors"
  add_foreign_key "professors", "courses"
  add_foreign_key "students", "classes"
  add_foreign_key "students", "courses"
  add_foreign_key "students", "users"
end

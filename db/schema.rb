# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_05_30_033736) do

  create_table "detalles", force: :cascade do |t|
    t.integer "cantidad"
    t.integer "Prestamo_id", null: false
    t.integer "libro_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["Prestamo_id"], name: "index_detalles_on_Prestamo_id"
    t.index ["libro_id"], name: "index_detalles_on_libro_id"
  end

  create_table "libros", force: :cascade do |t|
    t.string "titulo"
    t.string "autor"
    t.integer "anyo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "multa", force: :cascade do |t|
    t.integer "valor"
    t.date "fecha"
    t.boolean "estado"
    t.integer "Prestamo_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["Prestamo_id"], name: "index_multa_on_Prestamo_id"
  end

  create_table "prestamos", force: :cascade do |t|
    t.date "fecha"
    t.boolean "estado"
    t.integer "Usuario_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["Usuario_id"], name: "index_prestamos_on_Usuario_id"
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "nombres"
    t.string "apellidos"
    t.string "direccion"
    t.string "telefono"
    t.string "login"
    t.string "password"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "detalles", "Prestamos"
  add_foreign_key "detalles", "libros"
  add_foreign_key "multa", "Prestamos"
  add_foreign_key "prestamos", "Usuarios"
end

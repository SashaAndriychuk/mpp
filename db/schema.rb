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

ActiveRecord::Schema[7.0].define(version: 2023_06_03_222536) do
  create_table "clinics", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "date_create"
    t.string "types"
    t.string "city"
    t.string "rating"
  end

  create_table "departments", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "depart"
    t.bigint "clinic_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["clinic_id"], name: "index_departments_on_clinic_id"
  end

  create_table "doctors", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "fio"
    t.bigint "special_id"
    t.bigint "department_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["department_id"], name: "index_doctors_on_department_id"
    t.index ["special_id"], name: "index_doctors_on_special_id"
  end

  create_table "pacient_cards", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "clinic_id"
    t.bigint "pacient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "card_number"
    t.bigint "doctors_id"
    t.index ["clinic_id"], name: "index_pacient_cards_on_clinic_id"
    t.index ["doctors_id"], name: "index_pacient_cards_on_doctors_id"
    t.index ["pacient_id"], name: "index_pacient_cards_on_pacient_id"
  end

  create_table "pacients", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "fio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "birth"
  end

  create_table "specials", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "special"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "departments", "clinics"
  add_foreign_key "doctors", "departments"
  add_foreign_key "doctors", "specials"
  add_foreign_key "pacient_cards", "clinics"
  add_foreign_key "pacient_cards", "doctors", column: "doctors_id"
  add_foreign_key "pacient_cards", "pacients"
end

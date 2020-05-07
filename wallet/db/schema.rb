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

ActiveRecord::Schema.define(version: 2020_05_07_061931) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "expense_occurences", force: :cascade do |t|
    t.bigint "expense_id"
    t.date "date"
    t.text "notes"
    t.integer "amount"
    t.boolean "debit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["expense_id"], name: "index_expense_occurences_on_expense_id"
  end

  create_table "expenses", force: :cascade do |t|
    t.bigint "user_id"
    t.string "title"
    t.string "description"
    t.integer "recur"
    t.integer "times"
    t.date "date_start"
    t.date "date_end"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_expenses_on_user_id"
  end

  create_table "pay_expenses", force: :cascade do |t|
    t.bigint "payment_id"
    t.bigint "expense_occurence_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["expense_occurence_id"], name: "index_pay_expenses_on_expense_occurence_id"
    t.index ["payment_id"], name: "index_pay_expenses_on_payment_id"
  end

  create_table "payments", force: :cascade do |t|
    t.bigint "user_id"
    t.date "date"
    t.integer "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_payments_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "firstname"
    t.string "lastname"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "expense_occurences", "expenses"
  add_foreign_key "expenses", "users"
  add_foreign_key "pay_expenses", "expense_occurences"
  add_foreign_key "pay_expenses", "payments"
  add_foreign_key "payments", "users"
end

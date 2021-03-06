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

ActiveRecord::Schema.define(version: 20150701231024) do

  create_table "order_sheets", force: :cascade do |t|
    t.integer  "order_template_id"
    t.date     "order_day"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "order_sheets", ["order_template_id"], name: "index_order_sheets_on_order_template_id"

  create_table "order_templates", force: :cascade do |t|
    t.integer  "vendor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "order_templates", ["vendor_id"], name: "index_order_templates_on_vendor_id"

  create_table "orders", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "order_sheet_id"
    t.string   "response"
    t.boolean  "in_office"
    t.string   "notes"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "orders", ["order_sheet_id"], name: "index_orders_on_order_sheet_id"
  add_index "orders", ["user_id"], name: "index_orders_on_user_id"

  create_table "questions", force: :cascade do |t|
    t.string   "value"
    t.integer  "order_template_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.text     "options", default: []
  end

  add_index "questions", ["order_template_id"], name: "index_questions_on_order_template_id"

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "type"
    t.boolean  "in_toronto?"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
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
    t.string   "provider"
    t.string   "uid"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "vendors", force: :cascade do |t|
    t.string   "name"
    t.string   "cuisine"
    t.string   "website"
    t.string   "contact_number"
    t.string   "email"
    t.string   "contact_person"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

end

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

ActiveRecord::Schema.define(version: 20160413060841) do

  create_table "brands", force: :cascade do |t|
    t.string   "name"
    t.string   "picture"
    t.text     "description"
    t.string   "country"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "carts", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "discounts", force: :cascade do |t|
    t.text     "description"
    t.string   "annotation"
    t.integer  "value"
    t.string   "picture"
    t.date     "start"
    t.date     "end"
    t.string   "name"
    t.integer  "brand"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "line_items", force: :cascade do |t|
    t.integer  "stuff_id"
    t.integer  "weight_id"
    t.integer  "quantity",   default: 1
    t.integer  "cart_id"
    t.string   "color"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "pets", force: :cascade do |t|
    t.string   "name"
    t.string   "picture"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stuffs", force: :cascade do |t|
    t.integer  "pet_id"
    t.string   "name"
    t.string   "size"
    t.text     "annotation"
    t.text     "description"
    t.integer  "brand_id"
    t.integer  "discount_id"
    t.integer  "sale",        default: 0
    t.float    "price",       default: 0.0
    t.integer  "group"
    t.string   "picture"
    t.text     "color"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.boolean  "admin",                  default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "weights", force: :cascade do |t|
    t.integer  "size"
    t.integer  "stuff_id"
    t.integer  "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

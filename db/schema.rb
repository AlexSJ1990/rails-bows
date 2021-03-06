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

ActiveRecord::Schema.define(version: 2018_08_11_104458) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bows", force: :cascade do |t|
    t.string "color"
    t.string "size"
    t.string "description"
    t.string "photo"
    t.integer "num_in_stock"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.integer "price_cents", default: 0, null: false
    t.string "sku"
    t.index ["user_id"], name: "index_bows_on_user_id"
  end

  create_table "orders", force: :cascade do |t|
    t.string "status"
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "bow_id"
    t.string "state"
    t.json "payment"
    t.integer "amount_cents", default: 0, null: false
    t.string "bow_sku"
    t.index ["bow_id"], name: "index_orders_on_bow_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.text "review_desc"
    t.integer "stars"
    t.bigint "bow_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bow_id"], name: "index_reviews_on_bow_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "address"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "{:foreign_key=>true}_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["{:foreign_key=>true}_id"], name: "index_users_on_{:foreign_key=>true}_id"
  end

  add_foreign_key "bows", "users"
  add_foreign_key "orders", "bows"
  add_foreign_key "orders", "users"
  add_foreign_key "reviews", "bows"
  add_foreign_key "reviews", "users"
end

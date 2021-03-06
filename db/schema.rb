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

ActiveRecord::Schema.define(version: 2019_03_26_173940) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "auctions", force: :cascade do |t|
    t.datetime "start_time"
    t.datetime "end_time"
    t.integer "initial_price"
    t.integer "quantity"
    t.integer "product_id"
    t.integer "offer_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_auctions_on_user_id"
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "offers", force: :cascade do |t|
    t.integer "offer_price"
    t.bigint "auction_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["auction_id"], name: "index_offers_on_auction_id"
    t.index ["user_id"], name: "index_offers_on_user_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.integer "quality"
    t.integer "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.integer "quantity"
    t.string "photo"
    t.index ["user_id"], name: "index_products_on_user_id"
  end

  create_table "transactions", force: :cascade do |t|
    t.datetime "date_time"
    t.integer "price"
    t.integer "quantity"
    t.integer "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "buyer_user_id"
    t.bigint "seller_user_id"
    t.index ["buyer_user_id"], name: "index_transactions_on_buyer_user_id"
    t.index ["seller_user_id"], name: "index_transactions_on_seller_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "balance"
    t.string "name"
    t.string "address"
    t.string "phone_number"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "auctions", "users"
  add_foreign_key "offers", "auctions"
  add_foreign_key "offers", "users"
  add_foreign_key "products", "users"
end
